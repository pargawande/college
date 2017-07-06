%{
#include<stdio.h>
int chars,word,special,no,line;
%}
opencomment [/*]+
closecomment [*/]+
%%
opencomment[a-zA-Z]+closecomment ECHO ;
. ;
%%
main(void)
{
	yyin= fopen("sample.txt","r");
	yylex();
}
int yywrap()
{
	return(1);
}
