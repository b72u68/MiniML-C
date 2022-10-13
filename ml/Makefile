all: ml_lexer.ml ml_parser.ml

ml_lexer.ml: ml_parser.ml ml_lexer.mll
	ocamllex ml_lexer.mll

ml_parser.ml: ml_parser.mly
	menhir ml_parser.mly

clean:
	rm -f *~
	rm -f *.cmo *.cmi *.cmx *.o
	rm -f $(BINS)
