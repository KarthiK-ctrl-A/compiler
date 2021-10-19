%{
 /* program to precision */
%}

integer ([0-9]+)
float ([0-9]+\.[0-9])|([+|-]?[0-9]+\.[0-9]*[e|E][+|-][0-9]*)

%%
{integer} printf("\n %s is an integer \n",yytext);
{float} printf("\n %s is a floating point number \n",yytext);
%%

main()
{
yylex();
}
int yywrap()
{
return 1;
}
