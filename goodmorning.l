%option noyywrap
%{
	#include<stdio.h>
%}

%%
"good morning" {printf("Hello World");}
%%
int main()
{
	printf("Write 'good morning': ");
	yylex();
	return 0;
}