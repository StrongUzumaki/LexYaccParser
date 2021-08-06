%{
#define  YYSTYPE  std::string
#include <stdio.h>
#include "Server.hpp"
#include <string.h>
extern "C"
{
		void yyerror(const char *str)
		{
        	fprintf(stderr,"ошибка: %s\n",str);
		}
        int yylex(void);  
        int yyparse(void);
        int yywrap()
        {
                return 1;
        }
		int main()
		{
				yyparse();
		}
}

//void yyerror(const char *str)
//{
//        fprintf(stderr,"ошибка: %s\n",str);
//}
// 
//int yywrap()
//{
//        return 1;
//} 
//  
//int	main()
//{
//        yyparse();
//} 

%}

%token ZONETOK FILETOK WORD FILENAME QUOTE OBRACE EBRACE SEMICOLON;
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
				//printf("Обнаружено имя файла зоны '%s'\n",$2);
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
