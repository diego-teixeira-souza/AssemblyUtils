#include <iostream>

extern "C" int intDiv(int,int,int*);

int main(int argc, char* argv[])
{
	int dividend = 27;
	int divisor = 2;
	int remainder;
	int quotient;
	
	quotient = intDiv(dividend, divisor, &remainder);
	
	std::cout<<dividend<<"\\"<<divisor<<" = "<<quotient<<" : "<<remainder;
	
	return 0;
}