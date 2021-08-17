all:
	lex lexer.l
	yacc  -t --verbose --debug -d YACC.y -o YACC.cc 
	g++ -std=c++98 -c  lex.yy.c -o lex.yy.o 
	g++ -std=c++98 -g lex.yy.o Server.cpp Location.cpp YACC.cc MAIN.cpp  -o YACC
test:
	lex lexer.l
	cc lex.yy.c -ll
	cat config.txt | ./a.out
