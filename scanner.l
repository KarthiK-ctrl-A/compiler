%{
	int c=0;
%}

id [a-z][a-z0-9]*

%%
#.* {printf("\n %s is a preprocessor directive",yytext);}
int|double|char {printf("\n\t %s isa keyword",yytext);}
if|then|endif|else {printf("\n \t is a keyword",yytext);}
"/*" {c=1;}
"*/" {c=0;}
{id}\( {if(!c) printf("\n \n FUNCTION \n \t %s",yytext);}
{id}(\[[0-9]*\])? {if(!c) printf("\n \t identifier \t %s",yytext);}
\{ {if(!c) printf("\n Block begins"); ECHO; }
\} {if(!c) printf("\n Block Ends"); ECHO; }
\".*\" {if(!c) printf("\n %s is a String",yytext); }
[+|-]?[0-9]+ {if(!c) printf("\n %s is an Number",yytext);}
\( {if(!c) printf("\n \t"); ECHO; printf("\t delim open paranthesis \n");}
\) {if(!c) printf("\n \t"); ECHO; printf("\t delim closed paranthesis \n");}
\; {if(!c) printf("\n \t"); ECHO; printf("\t delim semicolon \n");}
"+"|"-"|"*"|"/" {if(!c) printf("%s is an arithmetic operator",yytext);}
%%

int main(int argc, char **argv)
{
	if(argc>1)
	{
		yyin = fopen(argv[1],"r");
	}
	else
	{
		yyin = stdin;
	}
	printf("\n");
}
int yywrap()
{
	return 0;
}
