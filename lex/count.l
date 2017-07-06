%{
#include<stdio.h>
int bcount=0,numbers,lines,space,spchar,word;
%}
%%
[\t\n ][b][a-z]* |
^[b][a-z]*	{
			printf(" ");
			for(int i=0;i<yyleng;i++)
			{
				yytext[i]=yytext[i]-32;
				printf("%c",yytext[i]);
			}
		}
[\t\n ][B][a-z]* |
^[B][a-z]*	{
			printf(" ");
			printf("%c",yytext[0]);
			for(int i=1;i<yyleng;i++)
			{
				yytext[i]=yytext[i]-32;
				printf("%c",yytext[i]);
			}
			
		}		
. {spchar++;ECHO;}
%%
main(void)
{
yyin=fopen("sample.txt","r");
yylex();
printf("bcount is :%d\n",bcount);
}
int yywrap()
{
return(1);
}

