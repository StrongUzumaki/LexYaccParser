%{
#include <stdio.h>
#include "Server.hpp"
#include <string.h>
#include <vector>
#define YYSTYPE char *
int yyparse(std::vector<Server> *servers);
extern "C"
{
	void yyerror(std::vector<Server> *servers, const char *str)
	{
    	//fprintf(stderr,"ошибка: %s\n",str);
	}
	int yylex(); 
    int yywrap()
    {
		return 1;
    }
}

%}

%token ZONETOK FILETOK WORD FILENAME QUOTE OBRACE EBRACE SEMICOLON;
%parse-param {std::vector<Server> *servers}
%%

commands: /* empty */
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


%%
//#include "lex.yy.c"
