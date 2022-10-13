(** IIT CS443 **)
(** ML to C Compiler **)
(** Project 4 **)
(** My Dinh **)
open ML.Ast

module Ca = C.Ast

type env = (var * int) list

type closure_typ = { cname : string;
                     cret : Ca.typ;
                     cparam : string * Ca.typ;
                     cbody: Ca.p_stmt }

(* The default type for values of unknown type *)
let def_typ = Ca.TInt
(* The default type of function pointers *)
let fptr_typ = Ca.TFunction (Ca.TInt, [])

let cloc_of_mlloc (stpos, _) = (stpos.Lexing.pos_fname, stpos.Lexing.pos_lnum)
let dummy_loc = ("", 0)
let mk_exp e = { Ca.edesc = e;
                 Ca.eloc = dummy_loc;
                 Ca.einfo = ()
               }
let mk_lhs l = { Ca.ldesc = l;
                 Ca.lloc = dummy_loc;
                 Ca.linfo = ()
               }
let mk_stmt s = { Ca.sdesc = s;
                  Ca.sloc = dummy_loc;
                }

(* Convenience functions *)

(* Produce code to declare and initialize a struct with given values for fields
 *)
let init_struct (stype: string) (fields : (string * Ca.p_exp) list)
: Ca.p_stmt list * Ca.p_exp * closure_typ list =
  let svar = new_var () in
  ((mk_stmt (Ca.SDecl (svar, Ca.TStruct stype, Some (mk_exp (ENewStruct stype)))))
   ::
     (List.fold_left
        (fun ss (f, v) ->
          (mk_stmt (Ca.SExp (mk_exp (Ca.EAssign (mk_lhs (LHField (svar, (), f)),
                                               v)))))
          ::ss
        )
        []
        fields)
  ,
    mk_exp (EVar svar),
  []
  )


let mk_assign v e =
  mk_exp (Ca.EAssign (mk_lhs (Ca.LHVar v), e))

let mk_assign_s v e =
  mk_stmt (Ca.SExp (mk_assign v e))

let mk_cast_e e t =
  mk_exp (Ca.ECast (e, t))

let mk_cast e t = mk_cast_e (mk_exp e) t

(* Definitions for compiling lists *)
let list_struct : string = "__list"
let list_hd : string = "list_hd"
let list_tl : string = "list_tl"
let list_fields : (string * Ca.typ) list =
  [(list_hd, def_typ); (list_tl, Ca.TStruct list_struct)]
let compile_nil : Ca.p_exp =
  mk_exp (Ca.ECast (mk_exp (Ca.EConst (Ca.CInt 0)), Ca.TStruct list_struct))
let compile_cons h t : Ca.p_stmt list * Ca.p_exp * closure_typ list =
  init_struct
    list_struct
    [(list_hd, h); (list_tl, t)]

(* Definitions for compiling pairs *)
let pair_struct : string = "__pair"
let pair_fst : string = "pair_fst"
let pair_snd : string = "pair_snd"
let pair_fields = [(pair_fst, def_typ); (pair_snd, def_typ)]

(* Definitions for compiling environments *)
let env_var : string = "__env"
let env_type : Ca.typ = Ca.TStruct list_struct
let lookup_fun = "__lookup"

(* Produce code to get the ith value in the environment, cast to type t *)
let lookup_in_env i t =
  ([],
   mk_cast (Ca.ECall (mk_exp (Ca.EVar lookup_fun),
                      [mk_exp (Ca.EConst (Ca.CInt i));
                       mk_exp (Ca.EVar env_var)])) t,
   [])

    (* The C code for the "lookup" function.
     * Don't confuse this with lookup_in_env, which is what you will call
     * from your code, to generate a call to lookup.
     * This isn't a function, it's just a pile of compiled C code *)
let lookup =
  let ivar = "i" in
  let evar = env_var in
  Ca.mk_def
    (Ca.DFun
    (lookup_fun,
     Ca.TFunction (def_typ, [(Ca.TInt, ivar); (env_type, env_var)]),
     mk_stmt
       (Ca.SBlock
          [mk_stmt (Ca.SWhile (mk_exp (Ca.EBinop (Ca.BGt, mk_exp (Ca.EVar ivar),
                                                  mk_exp (Ca.EConst (Ca.CInt 0)))),
                               mk_stmt
                                 (Ca.SBlock
                                    [mk_assign_s
                                       evar
                                       (mk_exp (Ca.EField (mk_exp (Ca.EVar evar),
                                                           list_tl)));
                                     mk_assign_s
                                       ivar
                                       (mk_exp
                                          (Ca.EBinop (Ca.BSub,
                                                      mk_exp (Ca.EVar ivar),
                                                      mk_exp (Ca.EConst (Ca.CInt 1)))))]
                                 )
             ));
           mk_stmt (Ca.SReturn
                      (Some
                         (mk_exp
                            (Ca.EField (mk_exp (Ca.EVar evar), list_hd)))))
       ])
    )
    )
    dummy_loc

(* Generate code to extend the environment with variable x, bound to
 * value v, and add it to the environment record. *)
(* Returns the C code to extend the env, and the new environment record *)
let extend_env env x v
  : (Ca.p_stmt list * Ca.p_exp * closure_typ list) * (string * int) list =
  let (is, e, c) = compile_cons (mk_cast_e v def_typ) (mk_exp (Ca.EVar env_var))
  in
  ((is @ [mk_assign_s env_var e], mk_exp (Ca.EVar env_var), c),
   (x, 0)::(List.map (fun (x, n) -> (x, n + 1)) env)
  )

(* Add a placeholder for variable x to the environment record. *)
let extend_with_placeholder env x =
  (x, 0)::(List.map (fun (x, n) -> (x, n + 1)) env)

(* Pop the first entry from both the environment and environment record
* when we leave a scope. Returns a pair of the C code to do the pop, and the
* new environment record. *)
let pop_env env =
  match env with
  | _::t ->
     (([mk_assign_s env_var
          (mk_exp (Ca.EField (mk_exp (Ca.EVar env_var), list_tl)))],
       [],
       []),
     List.filter_map (fun (x, n) -> if n - 1 >= 0 then Some (x, n - 1) else None) env)
  | _ -> failwith "empty env"

(* Definitions for compiling closures *)
let clos_struct : string = "__clos"
let clos_env : string = "clos_env"
let clos_fun : string = "clos_fun"
let clos_fields = [(clos_env, env_type); (clos_fun, fptr_typ)]


let rec compile_typ t =
  match t with
  | TInt -> Ca.TInt
  | TBool -> Ca.TBool
  | TUnit -> Ca.TInt
  | TList _ -> Ca.TStruct list_struct
  | TArrow (t1, t2) -> Ca.TStruct clos_struct
  | TProd _ -> Ca.TStruct pair_struct

let compile_const c =
  match c with
  | CNum n -> ([], mk_exp (Ca.EConst (Ca.CInt n)), [])
  | CBool b ->
     ([], mk_cast (Ca.EConst (Ca.CInt (if b then 1 else 0))) Ca.TBool, [])
  | CTriv -> ([], mk_exp (Ca.EConst (Ca.CInt 0)), [])
  | CNil -> ([], compile_nil, [])

let compile_bop =
  function BAdd -> Ca.BAdd | BSub -> Ca.BSub | BMul -> Ca.BMul
           | BDiv -> Ca.BDiv | BAnd -> Ca.BAnd | BOr -> Ca.BOr
           | BGt -> Ca.BGt | BGe -> Ca.BGe | BLt -> Ca.BLt
           | BLe -> Ca.BLe | BNe -> Ca.BNe | BEq -> Ca.BEq

let compile_uop =
  function UNot -> Ca.UNot | UNeg -> Ca.UNeg

exception Unimplemented

let rec pprint_env (env: env) =
    match env with
    | [] -> ()
    | (x, i)::t -> Printf.printf "%s: %d\n" x i; pprint_env t

(* get deBruijn index i of variable x in the environment *)
let get_var_i (env: env) (x: var) : int =
    snd (List.find (fun (v, i) -> v = x && i >= 0) env)

(* Compile the body of a function *)
let rec compile_body (env: env) (name: string) (x: var) (tx: typ) (body: t_exp) =
    let fname_mangle = new_mangle name in
    let bloc = cloc_of_mlloc body.eloc in
    let ((sl_ext, exp_ext, clos_ext), env_ext) = extend_env env x (Ca.mk_exp (Ca.EVar x) bloc) in
    let (sl_body, exp_body, clos_body) = compile_exp env_ext body in
    let fbody_name = fname_mangle ^ "__body" in
    let fbody_clos = {
        cname=fbody_name;
        cret=(compile_typ body.einfo);
        cparam=(x, compile_typ tx);
        cbody=(Ca.mk_stmt (Ca.SBlock (sl_ext @ sl_body @ [Ca.mk_stmt (Ca.SReturn (Some exp_body)) bloc])) bloc)}
    in
    let f_clos = fname_mangle ^ "_clos" in
    let stmt_f_clos_decl = mk_stmt (Ca.SDecl (f_clos, Ca.TStruct clos_struct, Some (mk_exp (Ca.ENewStruct clos_struct)))) in
    let stmt_f_clos_set_env = mk_stmt (Ca.SExp (mk_exp (Ca.EAssign (mk_lhs (Ca.LHField (f_clos, (), clos_env)), mk_exp (Ca.EVar env_var))))) in
    let stmt_f_clos_set_clos = mk_stmt (Ca.SExp (mk_exp (Ca.EAssign (mk_lhs (Ca.LHField (f_clos, (), clos_fun)), mk_cast (Ca.EVar fbody_name) (Ca.TFunction (def_typ, [])))))) in
    ([stmt_f_clos_decl; stmt_f_clos_set_env; stmt_f_clos_set_clos], mk_exp (Ca.EVar f_clos), clos_ext @ [fbody_clos] @ clos_body)

(* Compile an expression *)
and compile_exp (env: env) (e: t_exp)
          : Ca.p_stmt list * Ca.p_exp * closure_typ list =
    let eloc = cloc_of_mlloc e.eloc in
    match e.edesc with
    | EVar v -> lookup_in_env (get_var_i env v) (compile_typ e.einfo)
    | EConst c -> compile_const c
    | EBinop (op, e1, e2) ->
            let (sl_e1, exp_e1, clos_e1) = compile_exp env e1 in
            let (sl_e2, exp_e2, clos_e2) = compile_exp env e2 in
            (sl_e1 @ sl_e2, mk_exp (Ca.EBinop (compile_bop op, exp_e1, exp_e2)), clos_e1 @ clos_e2)

    | EUnop (op, e') ->
            let (sl_e', exp_e', clos_e') = compile_exp env e' in
            (sl_e', mk_exp (Ca.EUnop (compile_uop op, exp_e')), clos_e')

    | EIf (e1, e2, e3) ->
            let e1loc = cloc_of_mlloc e1.eloc in
            let e2loc = cloc_of_mlloc e2.eloc in
            let e3loc = cloc_of_mlloc e3.eloc in

            let (sl_e1, exp_e1, clos_e1) = compile_exp env e1 in
            let (sl_e2, exp_e2, clos_e2) = compile_exp env e2 in
            let (sl_e3, exp_e3, clos_e3) = compile_exp env e3 in

            let temp = new_var () in
            let stmt_temp_decl = mk_stmt (Ca.SDecl (temp, compile_typ e.einfo, None)) in
            let stmt_true_block = Ca.mk_stmt (
                Ca.SBlock (
                    sl_e2
                    @ [Ca.mk_stmt (Ca.SExp (Ca.mk_exp (Ca.EAssign (mk_lhs (Ca.LHVar temp), exp_e2)) e2loc)) e2loc]
                    )
                ) e2loc
            in
            let stmt_false_block = Ca.mk_stmt (
                Ca.SBlock (
                    sl_e3
                    @ [Ca.mk_stmt (Ca.SExp (Ca.mk_exp (Ca.EAssign (mk_lhs (Ca.LHVar temp), exp_e3)) e3loc)) e3loc]
                    )
                ) e3loc
            in
            let stmt_if = Ca.mk_stmt (Ca.SIf (exp_e1, stmt_true_block, stmt_false_block)) eloc in
            (sl_e1 @ [stmt_temp_decl] @ [stmt_if], mk_exp (Ca.EVar temp), clos_e1 @ clos_e2 @ clos_e3)

    | EFun (v, vt, e') ->
            let fname = new_mangle "__fun" in
            compile_body env fname v vt e'

    | ELet (v, typ_opt, e1, e2) ->
            let (sl_e1, exp_e1, clos_e1) = compile_exp env e1 in
            let ((sl_ext, exp_ext, clos_ext), env) = extend_env env v exp_e1 in
            let (sl_e2, exp_e2, clos_e2) = compile_exp env e2 in
            let temp = new_var () in
            let stmt_temp_decl =
                (match typ_opt with
                | Some t -> Ca.mk_stmt (Ca.SDecl (temp, compile_typ t, Some exp_e2)) eloc
                | None -> Ca.mk_stmt (Ca.SDecl (temp, compile_typ e2.einfo, Some exp_e2)) eloc)
            in
            let ((sl_pop, exp_pop, clos_pop), env) = pop_env env in
            (sl_e1 @ sl_ext @ sl_e2 @ [stmt_temp_decl] @ sl_pop, mk_exp (Ca.EVar temp), clos_e1 @ clos_ext @ clos_e2 @ clos_pop)

    | ELetFun (is_rec, f, v, vt, typ_opt, e1, e2) ->
            if is_rec then
                (* compile the recursive function body with extended env with placeholder *)
                let env_ext = extend_with_placeholder env f in
                let (sl_f, exp_f, clos_f) = compile_body env_ext f v vt e1 in

                (* extend the original env with the actual function closure *)
                let ((sl_ext, exp_ext, clos_ext), env) = extend_env env f exp_f in
                let stmt_f_clos_set_env =
                    (match exp_f.edesc with
                    | Ca.EVar f_clos -> mk_stmt (Ca.SExp (mk_exp (Ca.EAssign (mk_lhs (Ca.LHField (f_clos, (), clos_env)), mk_exp (Ca.EVar env_var)))))
                    | _ -> failwith "Expected a variable of type closure")
                in
                let (sl_e2, exp_e2, clos_e2) = compile_exp env e2 in
                let temp = new_var () in
                let stmt_temp_decl =
                    (match typ_opt with
                    | Some t -> Ca.mk_stmt (Ca.SDecl (temp, compile_typ t, Some exp_e2)) eloc
                    | None -> Ca.mk_stmt (Ca.SDecl (temp, compile_typ e2.einfo, Some exp_e2)) eloc)
                in
                let ((sl_pop, exp_pop, clos_pop), env) = pop_env env in
                (
                    sl_f @ sl_pop @ sl_ext @ [stmt_f_clos_set_env] @ sl_e2 @ [stmt_temp_decl] @ sl_pop,
                    mk_exp (Ca.EVar temp),
                    clos_f @ clos_pop @ clos_ext @ clos_e2 @ clos_pop
                )
            else
                let (sl_f, exp_f, clos_f) = compile_body env f v vt e1 in
                let ((sl_ext, exp_ext, clos_ext), env) = extend_env env f exp_f in
                let (sl_e2, exp_e2, clos_e2) = compile_exp env e2 in
                let temp = new_var () in
                let stmt_temp_decl =
                    (match typ_opt with
                    | None -> Ca.mk_stmt (Ca.SDecl (temp, compile_typ e2.einfo, Some exp_e2)) eloc
                    | Some t -> Ca.mk_stmt (Ca.SDecl (temp, compile_typ t, Some exp_e2)) eloc)
                in
                let ((sl_pop, exp_pop, clos_pop), env) = pop_env env in
                (
                    sl_f @ sl_ext @ sl_e2 @ [stmt_temp_decl] @ sl_pop,
                    mk_exp (Ca.EVar temp),
                    clos_f @ clos_ext @ clos_e2 @ clos_pop
                )

    | EApp (e1, e2) ->
            let (sl_e1, exp_e1, clos_e1) = compile_exp env e1 in
            let (sl_e2, exp_e2, clos_e2) = compile_exp env e2 in
            (
                sl_e1 @ sl_e2,
                Ca.mk_exp (Ca.ECall (mk_cast (Ca.EField (exp_e1, clos_fun)) (Ca.TFunction (compile_typ e.einfo, [(compile_typ e2.einfo, ""); (env_type, env_var)])), [exp_e2; mk_exp (Ca.EField (exp_e1, clos_env))])) eloc,
                clos_e1 @ clos_e2
            )

    | EPair (e1, e2) ->
            let (sl_e1, exp_e1, clos_e1) = compile_exp env e1 in
            let (sl_e2, exp_e2, clos_e2) = compile_exp env e2 in
            let (sl_init, exp_init, clos_init) = init_struct pair_struct [(pair_fst, exp_e1); (pair_snd, exp_e2)] in
            (sl_e1 @ sl_e2 @ sl_init, exp_init, clos_e1 @ clos_e2 @ clos_init)

    | ELetPair (v1, v2, e1, e2) ->
            let e1loc = cloc_of_mlloc e1.eloc in
            let e2loc = cloc_of_mlloc e2.eloc in

            let (sl_e1, exp_e1, clos_e1) = compile_exp env e1 in

            (*
               adding fst to the environment change the index of e1 in deBruijn indices
               -> cannot reuse exp_e1
               -> have to recompile e1
            *)
            let ((sl_ext1, exp_ext1, clos_ext1), env) = extend_env env v1 (Ca.mk_exp (Ca.EField (exp_e1, pair_fst)) e1loc) in

            (* compile e1 again to add tl into deBruijn indices *)
            let (sl_e1_ext1, exp_e1_ext1, clos_e1_ext1) = compile_exp env e1 in
            let ((sl_ext2, exp_ext2, clos_ext2), env) = extend_env env v2 (Ca.mk_exp (Ca.EField (exp_e1_ext1, pair_snd)) e1loc) in

            let (sl_e2, exp_e2, clos_e2) = compile_exp env e2 in

            let temp = new_var () in
            let stmt_temp_decl = Ca.mk_stmt (Ca.SDecl (temp, compile_typ e2.einfo, Some exp_e2)) e2loc in

            let ((sl_pop1, exp_pop1, clos_pop1), env) = pop_env env in
            let ((sl_pop2, exp_pop2, clos_pop2), env) = pop_env env in

            (
                sl_e1 @ sl_ext1 @ sl_e1_ext1 @ sl_ext2 @ sl_e2 @ [stmt_temp_decl] @ sl_pop1 @ sl_pop2,
                mk_exp (Ca.EVar temp),
                clos_e1 @ clos_ext1 @ clos_e1_ext1 @ clos_ext2 @ clos_e2 @ clos_pop1 @ clos_pop2
            )

    | ECons (e1, e2) ->
            let (sl_e1, exp_e1, clos_e1) = compile_exp env e1 in
            let (sl_e2, exp_e2, clos_e2) = compile_exp env e2 in
            let (sl_cons, exp_cons, clos_cons) = compile_cons exp_e1 exp_e2 in
            (sl_e1 @ sl_e2 @ sl_cons, exp_cons, clos_e1 @ clos_e2 @ clos_cons)

   | EMatchList (e1, e2, h, t, e3) ->
            let e1loc = cloc_of_mlloc e1.eloc in
            let e2loc = cloc_of_mlloc e2.eloc in
            let e3loc = cloc_of_mlloc e3.eloc in

            let (sl_e1, exp_e1, clos_e1) = compile_exp env e1 in
            let (sl_e2, exp_e2, clos_e2) = compile_exp env e2 in

            let temp = new_var () in
            let test_exp = Ca.mk_exp (Ca.EBinop (Ca.BEq, Ca.mk_exp (Ca.ECast (exp_e1, (Ca.TInt))) e1loc, mk_exp (Ca.EConst (Ca.CInt 0)))) e1loc in
            let stmt_temp_decl = Ca.mk_stmt (Ca.SDecl (temp, compile_typ e2.einfo, None)) eloc in

            let stmt_true_block = Ca.mk_stmt (Ca.SBlock (sl_e2 @ [mk_assign_s temp exp_e2])) e2loc in

            (*
               adding h to the environment change the index of e1 in deBruijn indices
               -> cannot reuse exp_e1
               -> have to recompile e1
           *)
            let ((sl_ext1, exp_ext1, clos_ext1), env) = extend_env env h (Ca.mk_exp (Ca.EField (exp_e1, list_hd)) e1loc) in

            (* compile e1 again to add tl into deBruijn indices *)
            let (sl_e1_ext1, exp_e1_ext1, clos_e1_ext1) = compile_exp env e1 in

            (* adding tl to deBruijn indices *)
            let ((sl_ext2, exp_ext2, clos_ext2), env) = extend_env env t (Ca.mk_exp (Ca.EField (exp_e1_ext1, list_tl)) e1loc) in

            let (sl_e3, exp_e3, clos_e3) = compile_exp env e3 in

            let ((sl_pop1, exp_pop1, clos_pop1), env) = pop_env env in
            let ((sl_pop2, exp_pop2, clos_pop2), env) = pop_env env in

            let stmt_false_block = Ca.mk_stmt (Ca.SBlock (sl_ext1 @ sl_e1_ext1 @ sl_ext2 @ sl_e3 @ [mk_assign_s temp exp_e3] @ sl_pop1 @ sl_pop2)) e3loc in
            let stmt_if_block = Ca.mk_stmt (Ca.SIf (test_exp, stmt_true_block, stmt_false_block)) eloc in

            (sl_e1 @ [stmt_temp_decl] @ [stmt_if_block], mk_exp (Ca.EVar temp), clos_e1 @ clos_e2 @ clos_ext1 @ clos_e1_ext1 @ clos_ext2 @ clos_e3 @ clos_pop1 @ clos_pop2)

   | EAnnot (e', t) -> compile_exp env { edesc=e'.edesc; eloc=e'.eloc; einfo=t }

let lib_structs =
  [(Ca.DStructDef (list_struct, list_fields));
   (Ca.DStructDef (pair_struct, pair_fields));
   (Ca.DStructDef (clos_struct, clos_fields))
  ]
let lib_structs = List.map (fun d -> Ca.mk_def d dummy_loc) lib_structs

let compile_prog p =
  let (mainis, maine, c) = compile_exp [] p in
  let mainis =
    (Ca.mk_stmt
       (Ca.SDecl (env_var, Ca.TStruct list_struct, Some (compile_nil)))
       dummy_loc)
    ::mainis
  in
  let adddefs (sds, fds) c =
    let tfun = Ca.TFunction (c.cret,
                            [(snd c.cparam, fst c.cparam);
                             (env_type, env_var)])
    in
    (sds,
     (Ca.mk_def (Ca.DFun (c.cname,
                          tfun,
                          c.cbody))
        dummy_loc)::fds
    )
  in
  let main =
    Ca.mk_def
      (Ca.DFun ("main",
               Ca.TFunction (compile_typ p.einfo, []),
               mk_stmt (Ca.SBlock (mainis @ [mk_stmt
                                              (Ca.SReturn (Some maine))]))
      ))
      dummy_loc
  in

  let (sds, fds) = List.fold_left adddefs (lib_structs, []) c in
  sds @ [lookup] @ fds @ [main]
