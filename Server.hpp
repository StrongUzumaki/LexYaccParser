#ifndef SERVER_HPP
#define SERVER_HPP
#include <iostream>

class Server{

	public:
		
		
		void	setServerName(std::string server_name);
		Server(){};	
		std::string	getName(){
			return server_name;
		}
	private:
		std::string	server_name;
};
#endif
