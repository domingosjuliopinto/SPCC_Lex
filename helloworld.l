%option noyywrap
%{
	#include<stdio.h>
%}

%%
\n {printf("Hello World");}
%%
int main()
{
	printf("Press Enter Key");
	yylex();
	return 0;
}