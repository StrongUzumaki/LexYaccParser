#ifndef SERVER_HPP
#define SERVER_HPP
#include <iostream>
#include <vector>
#include "Location.hpp"
		
class Server{

	public:
		
		void	addServerName(std::string server_name);
		Server();	
		std::vector<std::string>		getServerNames();
		std::vector<Location>			getLocations();
		
		~Server();
		Server(Server const & src);
		Server & operator=(Server const & src);
	
	private:
		std::vector<std::string>	server_names;
		std::vector<Location>		locations;
};
#endif
