%{
#define  YYSTYPE  char * //std::string
#include <stdio.h>
#include "Server.hpp"
#include <string.h>
int yylex(void);  
int yyparse(void *param);
//int yyparse(Server *servers);
extern "C"
{
	void yyerror(Server *servers, const char *str)
	{
    	fprintf(stderr,"ошибка: %s\n",str);
	}
    int yywrap()
    {
		return 1;
    }
	int main()
	{
		yyparse(NULL);
	}
}

%}

%token ZONETOK FILETOK WORD FILENAME QUOTE OBRACE EBRACE SEMICOLON;
%parse-param {Server *servers}
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
				servers = new Server((std::string)$2);
				//printf("Обнаружено имя файла зоны '%s'\n",$2.c_str());
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

//void yy::Parser::error()
//{
//	std::cout << "JOPA" << std::endl;
//}
