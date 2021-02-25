#include <iostream>
#include "isEven.hpp"

int main(int argc,char* argv[])
{
	for(int i= -100; i<= 999; i++)
	std::cout<<i<<" : "<<isEven(i)<<std::endl;
	
	return 0;
}