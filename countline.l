%option noyywrap
%{
	#include<stdio.h>
	int count;
%}

%%
\n count++ ;
"$" printf("Number of lines is : %d",count);
%%
int main()
{
	printf("Please enter a string that ends with $ :\n");
	yylex();
	return 0;
}