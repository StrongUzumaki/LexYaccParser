#include "Server.hpp"
#include <unistd.h>
#include <fcntl.h>
#include <vector>
#define YYSTYPE char *

int yyparse(std::vector<Server> *servers);

int main(int ac, char *av[])
{
	std::vector<Server> servers;
	int i;

	if (ac == 2)
		i = open(av[1], O_CREAT);
	dup2(i,0);
	yyparse(&servers);
	std::cout << "Im Server and myfilename is "  << servers[0].getName() << std::endl;
}
