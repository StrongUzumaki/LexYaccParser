%{
//	#define YYSTYPE char *
	#include <stdio.h>
//	#include "example5.hh"
//	int yylex(void);  
%}

%%

server					printf(" SERVER");
listen					printf(" LISTEN");
server_name				printf(" SERVER_NAME");
location				printf(" LOCATION");
error_page				printf(" ERROR_PAGE");
client_max_body_size	printf(" CLIENT_MAX_BODY_SIZE");
=						printf(" =");
[0-9]+  				 printf(" NUMBER");//yylval=strdup(yytext);
[a-zA-Z][a-zA-Z0-9_]*   printf(" WORD");//yylval=strdup(yytext);

[a-zA-Z0-9\/.-]+        printf(" FILENAME");//yylval=strdup(yytext);
"#".*\n					;
\"                      printf(" QUOTE");
\{                      printf(" OBRACE");
\}                      printf(" EBRACE");
;                       printf(" SEMICOLON");
\n                      printf("\n");/* пропускаем концы строк */;
[ \t]+                  /* пропускаем пробелы */;
%%

//#define YYSTYPE char *
