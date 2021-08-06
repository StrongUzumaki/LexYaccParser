%{
#include <stdio.h>
#include <string.h>
int yyparse();
int yylex();

void yyerror(const char *str)
{
        fprintf(stderr,"ошибка: %s\n",str);
}
 
int yywrap()
{
        return 1;
} 
  
int main()
{
        yyparse();
} 

%}

%token NUMBER TOKHEAT STATE TOKTARGET TOKTEMPERATURE
%%
commands: /* empty */
        | commands command
        ;

command:
        heat_switch
        |
        target_set
        ;

heat_switch:
        TOKHEAT STATE
        {
				if ($2)
                	printf("\tОбогреватель включен\n");
				else
                	printf("\tОбогреватель выключен\n");
        }
        ;

target_set:
        TOKTARGET TOKTEMPERATURE NUMBER
        {
                printf("\tТемпература установлена на %d градусов\n", $3);
        }
        ;

%%


