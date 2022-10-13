LLVM_FILES=llvm/llvm_ast.ml llvm/llvm_print.mli llvm/llvm_print.ml llvm/llvm_interp.mli llvm/llvm_interp.ml llvm/llvm_utils.ml llvm/llvm_bbcfg.ml llvm/llvm_typecheck.ml llvm/llvm_ssa.ml llvm/LLVM.ml

FRONTC_FILES=c/frontc/cabs.ml c/frontc/cparser.mli c/frontc/clexer.ml c/frontc/cparser.ml c/frontc/frontc.ml

C_FILES=c/c_ast.ml c/frontc/cprint.mli c/frontc/cprint.ml c/c_desugar.ml c/c_typecheck.ml c/c.ml

ML_FILES=ml/ml_ast.ml ml/ml_parser.mli ml/ml_lexer.ml ml/ml_parser.ml ml/ml_print.ml ml/ml_typecheck.ml ml/ml_alpha.ml ml/ML.ml

UTILS_FILES=utils/varmap.ml utils/graph.ml utils/config.ml

OTHER_FILES=cllvm.ml mlc.ml main.ml

INCLUDES=-I llvm/ -I c/frontc -I c/ -I utils/ -I ml/

BINS=main

all:
	cd ml && make
	ocamlopt -g -o main $(INCLUDES) $(UTILS_FILES) $(LLVM_FILES) $(FRONTC_FILES) $(C_FILES) $(ML_FILES) $(OTHER_FILES)

clean:
	cd ml && make clean
	rm -f *~
	rm -f *.cmo *.cmi *.cmx *.o
	rm -f $(BINS)
	cd llvm && rm -f *~ *.cmo *.cmi *.cmx *.o
	cd c/frontc && rm -f *~ *.cmo *.cmi *.cmx *.o
	cd c && rm -f *~ *.cmo *.cmi *.cmx *.o
	cd utils && rm -f *~ *.cmo *.cmi *.cmx *.o
	cd tests && rm -f *.c *.ll
