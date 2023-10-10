%option noyywrap

%{
#include<stdio.h>
int Vowel=0;
int Con=0;
%}

%%
[aeiouAEIOU] {Vowel++;}
[^aeiouAEIOU \n] {Con++;}
"Output" {printf("Vowel = %d\nConsonants=%d",Vowel,Con);}
%%

int main()
{
    printf("Enter String");
    yylex();
    return 0;
}
