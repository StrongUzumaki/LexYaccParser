%{
	#define YYSTYPE char *
	#include <stdio.h>
	#include "example5.hh"
	int yylex(void);  
%}

%%

server					return SERVER;
listen					return LISTEN;
server_name				return SERVER_NAME;
location				return LOCATION;
error_page				return ERROR_PAGE;
client_max_body_size	return CLIENT_MAX_BODY_SIZE;
[a-zA-Z][a-zA-Z0-9]*    yylval=strdup(yytext); return WORD;
[a-zA-Z0-9\/.-]+        yylval=strdup(yytext); return FILENAME;
"#".*\n					;
\"                      return QUOTE;
\{                      return OBRACE;
\}                      return EBRACE;
;                       return SEMICOLON;
\n                      /* пропускаем концы строк */;
[ \t]+                  /* пропускаем пробелы */;
%%

#define YYSTYPE char *
