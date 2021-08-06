all:
	lex lexer.l
	yacc -d example5.y
	gcc lex.yy.c y.tab.c -o example5
