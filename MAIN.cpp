#include "Server.hpp"
#include <unistd.h>
#include <fcntl.h>
#include <vector>
#define YYSTYPE char *

int yyparse(std::vector<Server> *servers);
extern int yydebug;

int main(int ac, char *av[])
{
	yydebug = 1;
	std::vector<Server> servers;
	dup2(open(av[1],O_CREAT), 0);
	yyparse(&servers);
}