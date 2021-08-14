%{
//	#define YYSTYPE char *
	#include <stdio.h>
//	#include "example5.hh"
//	int yylex(void);  
%}

%%
	/*
	server					printf(" SERVER");
	listen					printf(" LISTEN");
	server_name				printf(" SERVER_NAME");
	location				printf(" LOCATION");
	error_page				printf(" ERROR_PAGE");
	client_max_body_size	printf(" CLIENT_MAX_BODY_SIZE");
	*/

server | 
listen | 
server_name | 
location | 
error_page | 
client_max_body_size 			printf(" DIRECTIVE");


=						printf(" =");
:						printf(" COLON");
root					printf(" ROOT");
[0-9]+[.][0-9]+[.][0-9]+[.][0-9]+	printf(" IP");
$[a-zA-Z0-9_]+			printf(" ENV");
[0-9]+  				 printf(" NUMBER");//yylval=strdup(yytext);
[a-zA-Z][a-zA-Z0-9_]*   printf(" WORD");//yylval=strdup(yytext);
[a-zA-Z0-9\/.-]+        printf(" PATH");//yylval=strdup(yytext);
"#".*					;
\"                      printf(" QUOTE");
\{                      printf(" OBRACE");
\}                      printf(" EBRACE");
;                       printf(" SEMICOLON");
\n                      printf("\n");/* пропускаем концы строк */;
[ \t]+                  /* пропускаем пробелы */;
%%

//#define YYSTYPE char *
