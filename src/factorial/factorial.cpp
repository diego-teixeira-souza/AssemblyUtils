#include <iostream>
#include "factorial.hpp"

using std::cout;
const int fac = 5;

int main(int argc, char* argv[])
{
	try {
		
		std::cout<<factorial(3);
		
		std::cout<<std::endl;
		
		int f = 1;
		for(int i=1;i<= fac; i++)
			f = f * i;
		std::cout<<f;
	
	}catch(...){
		std::cout<<"error";
	}
	return 0;
}