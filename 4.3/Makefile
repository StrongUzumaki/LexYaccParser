all:
	lex lexer.l 
	yacc -d example5.y
	g++ -std=c++98  lex.yy.c y.tab.c -o example5
