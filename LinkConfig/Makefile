all:
	yacc  --verbose --debug -d example5.y -o example5.cc 
	lex lexer.l
	cc -c lex.yy.c -o lex.yy.o
	g++ lex.yy.o example5.cc  -o example5
