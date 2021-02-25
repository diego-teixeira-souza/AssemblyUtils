#include <iostream>
#include <windows.h>

extern "C" void memCpy(const void*, void*, unsigned);

const int BUFFER_SIZE = 99999999;

char buffA[BUFFER_SIZE];
char buffB[BUFFER_SIZE];

//4.294.967.203

//4.294.967.171

void generate(char* ptr,const int sz){
	for(int i=0;i<sz; i++, ptr++)
		*ptr = 'a';
	
	ptr[sz-1] = '\0';
}

int main(int argc, char* argv[])
{
	generate(buffA,BUFFER_SIZE);
	
	DWORD startTime = GetTickCount();
	
	memCpy(buffA,buffB,BUFFER_SIZE);
	
	DWORD end = GetTickCount();
	
	std::cout<<std::endl<<(startTime - end);
	//[std::cout<<std::endl<<buffB;
	std::cout<<std::endl<<sizeof(buffB);
	
	return 0;
}