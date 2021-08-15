all:
	lex lexer.l
	yacc  -t --verbose --debug -d YACC.y -o YACC.cc 
	cc -c  lex.yy.c -o lex.yy.o 
	g++ -g lex.yy.o YACC.cc MAIN.cpp  -o YACC
test:
	lex lexer.l
	cc lex.yy.c -ll
	cat config.txt | ./a.out
