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

	%token HTTP_METHOD STATE COLON IP AUTOINDEX PATH NUMBER ROOT LIMIT_EXCEPT EQUAL  SERVER LISTEN SERVER_NAME LOCATION ERROR_PAGE CLIENT_MAX_BODY_SIZE WORD FILENAME QUOTE OBRACE EBRACE SEMICOLON;
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

server_statement: root | error_page | location_block | listen | server_name  | client_max_body_size; 

root:
	ROOT PATH SEMICOLON  

error_page: 
		ERROR_PAGE error_num PATH SEMICOLON 
		|
		ERROR_PAGE error_num EQUAL PATH	SEMICOLON
		{
		}

error_num:
		 | error_num NUMBER

location_block:
	 LOCATION PATH OBRACE location_statements EBRACE 

location_statements: 
		| location_statements location_statement

location_statement:	autoindex | root | limit_except | error_page /*http_redirection  | default_file*/ 

limit_except: LIMIT_EXCEPT what_to_except SEMICOLON

what_to_except:
		/* empty */ 
		| what_to_except HTTP_METHOD

autoindex:
		 AUTOINDEX STATE SEMICOLON

listen: LISTEN what_to_listen SEMICOLON

what_to_listen: IP COLON NUMBER | IP | NUMBER 

server_name: SERVER_NAME server_names SEMICOLON

server_names: | server_names PATH
{
	 //std::cout << $0;
	//servers->back().setServerName((std::string)$1);
}

client_max_body_size: CLIENT_MAX_BODY_SIZE NUMBER SEMICOLON

%%
//#include "lex.yy.c"
