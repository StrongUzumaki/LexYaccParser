%{
#include <stdio.h>
#include "Server.hpp"
#include <string.h>
#include <vector>
//int yydebug=1;
#define YYSTYPE char *
extern char	*yytext;
#define YYDEBUG_LEXER_TEXT yytext
int yyparse(std::vector<Server> *servers);
extern "C"
{
	void yyerror(std::vector<Server> *servers, const char *str)
	{
    	fprintf(stderr,"ошибка: %s\n",str);
	}
	int yylex(); 
    int yywrap()
    {
		return 1;
    }
}

%}

	%token STATE COLON IP AUTOINDEX PATH NUMBER ROOT LIMIT_EXCEPT EQUAL  SERVER LISTEN SERVER_NAME LOCATION ERROR_PAGE CLIENT_MAX_BODY_SIZE WORD FILENAME QUOTE OBRACE EBRACE SEMICOLON;
 /*%token EQUAL DIRECTIVE WORD FILENAME QUOTE OBRACE EBRACE SEMICOLON LIMIT_EXCEPT;*/

%parse-param {std::vector<Server> *servers}
%%
commands:
		| commands command
		;

command:
	   server_start 

server_start:
		SERVER server_content
		{
			Server tmp = Server("kek");		
		}

server_content:
		OBRACE server_statements EBRACE
		{
		}

server_statements:
		|	server_statements server_statement
		;

server_statement: error_page | location_block | listen | SERVER_NAME | LOCATION | CLIENT_MAX_BODY_SIZE; 

listen: LISTEN what_to_listen SEMICOLON

what_to_listen: IP COLON NUMBER | IP | NUMBER 

error_page: 
		error_num PATH 
		|
		error_num EQUAL PATH	
		{
			Server("lol");
		}

error_num:
		 | error_num NUMBER


location_block:
	 LOCATION FILENAME OBRACE location_statements EBRACE SEMICOLON

location_statements: 
		| location_statements location_statement

location_statement:	LIMIT_EXCEPT | autoindex | ROOT  /*http_redirection  | default_file*/ 

autoindex:
		 AUTOINDEX STATE;

%%
//#include "lex.yy.c"
