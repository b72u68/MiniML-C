open Arg

let compile_ml = Some Mlc.compile_prog
let compile_iitran = None
let compile_c = Some Cllvm.compile_prog
let optimize = None
let codegen = None

let usage_msg = "./main [options] <input>"

let input_file = ref ""
let outputprefix = ref ""
let keepc = ref false
let keepllvm = ref false
let stopc = ref false
let stopllvm = ref false
let interpllvm = ref false
let nossa = ref false
let opt = ref true
let verbose = ref false

let specs =
  [("-verbose", Set verbose, "Print main compiler passes");
   ("-o", Set_string outputprefix, "Output file or prefix");
   ("-keepc", Set keepc, "Produce C output");
   ("-keepllvm", Set keepllvm, "Produce LLVM output");
   ("-stopc", Set stopc, "Stop after C code generation");
   ("-stopllvm", Set stopllvm, "Stop after LLVM generation");
   ("-interpllvm", Set interpllvm, "Run LLVM interpreter");
   ("-nossa", Set nossa, "Do not convert LLVM to SSA");
   ("-O0", Clear opt, "No optimizations");
   ("-O1", Set opt, "Standard optimizations");
  ]

let () = parse specs (fun s -> input_file := s) usage_msg

let cmd_error s =
  Printf.fprintf stderr "main: %s\n\n" s;
  usage specs usage_msg;
  exit 1

let warn s =
  Printf.fprintf stderr "WARNING: %s\n" s

let verb s =
  if !verbose then
    Printf.printf "%s\n" s

let unimp s =
  Printf.fprintf stderr "main: %s not implemented" s;
                 exit 1

(** Input Validation/Normalization **)
let () = if !input_file = "" then cmd_error "No input file specified"
let () =
  if !outputprefix = "" then
    try
      outputprefix := Filename.chop_extension !input_file
    with Invalid_argument _ -> outputprefix := !input_file
  else
    try
      outputprefix := Filename.chop_extension !outputprefix
    with Invalid_argument _ -> ()

let is_none o =
  match o with
  | None -> true
  | Some _ -> false

let string_of_pos p =
	Lexing.(Printf.sprintf "%s:%d:%d"
	          p.pos_fname
	          p.pos_lnum
	          (p.pos_cnum - p.pos_bol))

let ext = String.lowercase_ascii (Filename.extension !input_file)
let (llvmprog, tds) =
  match ext with
  | ".ml" | ".c" ->
     let cprog =
       match ext with
       | ".ml" ->
          (match compile_ml with
           | Some compile ->
              (verb "Start Parse ML");
              let ch = open_in !input_file in
              let lexbuf = Lexing.from_channel ch in
              let mlprog = ML.Parser.prog ML.Lexer.token lexbuf in
              (verb "Start Typecheck ML");
              let tprog =
                try ML.Typecheck.infer_exp (Varmap.empty) mlprog
                with ML.Typecheck.TypeError (s, (spos, epos)) ->
                      (Printf.fprintf stderr "%s--%s: Type Error: %s"
                         (string_of_pos spos)
		         (string_of_pos epos)
		         s;
                       exit 1)
              in
              (verb "Start Compile ML");
              (compile tprog, Varmap.empty)
           | None -> unimp "ML compiler"
          )
       | ".c" ->
          (verb "Start Parse C");
          (match Frontc.parse_file (!input_file) stdout with
           | Frontc.PARSING_ERROR -> exit 1
           | Frontc.PARSING_OK prog ->
              (verb "Start Desugar C");
              (try
                 C.Desugar.desugar_file (!input_file) prog
               with C.Desugar.Unsupported (s, (fl, ln)) ->
                 (Printf.eprintf "%s:%d -- Unsupported: %s\n"
                    fl
                    ln
                     s;
                  exit 1)
              )
          )
       | _ -> failwith "shouldn't happen"
     in
     (if is_none compile_c || !stopc || !keepc then
        ((verb ("Output " ^ (!outputprefix) ^ ".c"));
         let outch = open_out (!outputprefix ^ ".c") in
         Cprint.print outch (fst cprog);
         close_out outch));
     (verb "Start Typecheck C");
     let (ctx, prog) =
       try C.Typecheck.typecheck_prog cprog
       with C.Typecheck.TypeError (s, (fl, ln)) ->
         (Printf.eprintf "%s:%d -- Type error: %s\n"
            fl
            ln
            s;
          exit 1)
     in

     if !stopc then exit 0;
     (verb "Start Compile C");
     (match compile_c with
      | None -> unimp "C compiler"
      | Some compile ->
         compile (ctx, prog))
  | _ -> cmd_error ("Don't know what to do with " ^ (!input_file))

let () = if is_none codegen || !stopllvm || !keepllvm then
           (verb ("Output " ^ (!outputprefix) ^ ".ll");
            let outch = open_out ((!outputprefix) ^ ".ll") in
            LLVM.Print.print_prog
              (Format.formatter_of_out_channel outch)
              (llvmprog, tds);
            close_out outch
           )

let _ = verb "Start Typecheck LLVM"
let ts =
  try
    LLVM.Typecheck.typecheck_prog (llvmprog, tds)
  with LLVM.Typecheck.TypeError (s, i) ->
    Format.fprintf Format.std_formatter "Type Error: %s\n  %a"
      s
      LLVM.Print.print_inst i;
    Format.print_newline ();
    exit 1

let (llvm_ssa, tds) =
  if !nossa then (llvmprog, tds)
  else
    (verb "Start SSA Conversion";
     LLVM.SSA.convert_prog_to_ssa ts (llvmprog, tds))

let llvm_opt =
  match (!opt, optimize) with
  | (true, Some optimize) ->
     (verb "Start Optimize";
      optimize llvm_ssa)
  | _ -> llvm_ssa

let () = if is_none codegen || !stopllvm || !keepllvm then
           (verb ("Output " ^ (!outputprefix) ^ ".ll");
            let outch = open_out ((!outputprefix) ^ ".ll") in
            LLVM.Print.print_prog
              (Format.formatter_of_out_channel outch)
              (llvm_opt, tds);
            close_out outch
           )

let () = if !interpllvm then
           (verb "Start Interpret LLVM";
            try
              let (_, globs) =
                List.fold_left
                  (fun (i, ctx) f ->
                    (i + 1,
                     Varmap.add
                      f.LLVM.Ast.f_name
                      (LLVM.Ast.Const i)
                      ctx
                    )
                  )
                  (0, Varmap.empty)
                  llvm_opt
              in
              let (_, _, r) = LLVM.Interp.interp (llvm_opt, tds) globs
              in
              Printf.printf "Result: %d\n" r
            with LLVM.Interp.RuntimeError (s, (f, l)) ->
              Printf.eprintf "%s:%d -- Runtime error: %s\n"
                f
                l
                s;
              exit 1)

let () = verb "Done."
