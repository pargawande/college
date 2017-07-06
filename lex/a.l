%%
if|else|while|for printf("\n%s is a keywprd",yytext);
!=|==|<=|>= printf("\n%s is a operator",yytext);
[a-z] printf("\n%s is a variable",yytext);
= printf("\n%s is a assignment operator",yytext);
var[0-9]+ printf("\n%s is a variable",yytext);
"{" printf("\n%s is a opening curly bracket",yytext);
"}" printf("\n%s is a closing curly bracket",yytext);
"(" printf("\n%s is a opening round bracket",yytext);
")" printf("\n%s is a closing round bracket",yytext);
.	printf("\n%s is a unknown",yytext);;
%%
main()
{
	FILE *fh;

    if ((fh = fopen(, "r")))
        yyin = fh;
    yylex();
    return 0;
	yylex();
}
yywrap()
{
}
