all:
	lex lexer.l
	yacc --verbose --debug -d example5.y -o example5.cc
	cc -c lex.yy.c -o lex.yy.o
	c++ lex.yy.o example5.cc -o example5 
