%option noyywrap

%{
#include<stdio.h>
int keyword=0;
int operate=0;
int symbols=0;


%}

%%
"if"|"else"|"while"|"do"|"break"|"continue"|"return"|"for"|"int"|"char"|"double" {keyword++;}
"+"|"-"|"*"|"/"|"%"|"&" {operate++;}
"."|"@"|"#"|"?"|"^"|"$"|"("|")"|"["|"]"|"{"|"}" {symbols++;}
"Output" {printf("Keywords = %d\nOperator=%d\nSpecial Symbols=%d",keyword,operate, symbols);}
%%

int main()
{
    printf("Enter String: ");
    yylex();
    return 0;
}