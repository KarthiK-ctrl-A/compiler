%{
  /* Program to identify octal and hexadecimal numbers */
%}

Oct [o][0-9]+
Hex [o][x|X][0-9A-F]+

%%
{Oct} printf("This octal number");
{Hex} printf("This is hexadecimal number");
%%

main()
{
	yylex();
}

int yywrap()
{
	return 1;
}
