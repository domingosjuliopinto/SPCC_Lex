%option noyywrap

%{
#include<stdio.h>
int UC=0;
int LC=0;
%}

%%
[A-Z] {UC++;}
[a-z] {LC++;}
"Output" {printf("UC = %d\nLC=%d",UC,LC);}
%%

int main()
{
    printf("Enter String");
    yylex();
    return 0;
}
