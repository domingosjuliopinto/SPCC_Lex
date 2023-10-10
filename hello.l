%option noyywrap
%{
       #include<stdio.h>       
%}

%%
\n printf("HelloWorld");}
%%
int main()
{
    printf("Press Enter Key ");
    yylex();
    return 0;
}
