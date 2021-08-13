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

%token SERVER LISTEN SERVER_NAME LOCATION ERROR_PAGE CLIENT_MAX_BODY_SIZE WORD FILENAME QUOTE OBRACE EBRACE SEMICOLON;
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
				
		}

server_content:
		OBRACE server_statements EBRACE
		{
		}

server_statements:
		|	server_statements server_statement
		;

server_statement: ERROR_PAGE | location_block | LISTEN 

location_block:
	 LOCATION FILENAME OBRACE server_statements EBRACE SEMICOLON

/*quotedname:
		  QUOTE FILENAME QUOTE
		  {
				$$=$2;
		  }
/*
commands: 
        | commands command
        ;

command:
	   zone_set
        ;

zone_set:
		ZONETOK quotedname zonecontent
		{
			//Server$2;
			//printf("Найдена полная зона для '%s'\n", $2);
		}
		;
zonecontent:
		   OBRACE zonestatements EBRACE
quotedname:
		  QUOTE FILENAME QUOTE
		  {
				$$=$2;
		  }
zonestatements:
			  |
			  zonestatements zonestatement SEMICOLON
			  ;
zonestatement:
			statements
			|
			FILETOK	quotedname
			{
				std::cout << "Обнаружено имя файла зоны '"  << $2 << "\'" << std::endl;
				servers->push_back(Server((std::string)$2));
				std::cout << "Server is created" << std::endl;	
			}
			;
block: 
        OBRACE zonestatements EBRACE SEMICOLON
        ;

statements:
        | statements statement
        ;

statement: WORD | block | quotedname

*/
%%
//#include "lex.yy.c"
