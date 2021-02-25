#include <iostream>

extern "C" bool isStrEqual(char*, char*, unsigned);

int main(int argc,char* argv[])
{
	char a[]={"diego"};
	char b[]={"diego"};
	char c[]={"diego e hugo"};
	
	std::cout<<isStrEqual(a,c,5);
	
	return 0;
}