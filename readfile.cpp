#include<iostream>
#include<string.h>
#include <stdio.h>
#include <stdlib.h>
using namespace std;
int main()
{
	char a,file[20],* temp;
	void *op;
	int *cnt;
	cout<<"\nenter file name :";
	cin>>file;
	FILE *f;
	f=fopen(file,"r+");
	while(feof(f)==0)
	{
		fread(op,1,1,f);
		temp=(char *) op;
		cout<<temp;
		a=*temp;
		if(a=='a')
		{
			system("cat ")
		}
	
	}
	//system("cat sample.txt");
}
