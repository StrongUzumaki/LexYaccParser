#ifndef SERVER_HPP
#define SERVER_HPP
#include <iostream>

class Server{

	public:
		
		
		void	setServerName(std::string server_name);
		Server(std::string filename){
		   	this->filename = filename;
		};	
		std::string	getName(){

			return filename;
		}
	private:
		std::string	server_name;
		std::string filename;
};
#endif
