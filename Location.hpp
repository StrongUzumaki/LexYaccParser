#ifndef LOCATION_HPP
#define LOCATION_HPP
#include <vector>
#include <list>
#include <iostream>

class Location{

	public:
		void	setAutoindex(bool state);
		Location(std::string path){};
	private:
		std::list<std::string> accepted_methods;
		std::string	root;
		bool	autoindex;	
};
#endif
