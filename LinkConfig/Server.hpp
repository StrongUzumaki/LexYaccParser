#ifndef SERVER_HPP
#define SERVER_HPP
#include <iostream>

class Server{

	public:
		Server(std::string filename){
		   	this->filename = filename;
		};	
	private:
		std::string filename;
};
#endif
