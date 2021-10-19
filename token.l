%{
	int tc = 0;
%}

%%
[a-zA-z]+ {printf("%d WORD %s\n",++tc,yytext);}
[0-9]+ {printf("%d is a number %s \n",++tc,yytext);}
[^a-zA-Z0-9]+ {printf("%d OTHER %s \n",++tc,yytext);}

%%
main()
{
yylex();
}
int yywrap()
{
return 1;
}
