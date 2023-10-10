%option noyywrap
%{
   #include<stdio.h>
   int keyword = 0;
   int identifier = 0;
   int number = 0;
   int specialchar = 0;
   int operator = 0;
   int token = 0;
%}

%%
"if"|"else"|"switch"|"break"|"while"|"for"|"do"|"int"|"char"|"float" {keyword++;}
[a-zA-Z]+[0-9]* {identifier++;}
[0-9] {number++;}
"."|"@"|"#"|"?"|"^"|"$"|"("|")"|"["|"]"|"{"|"}" {specialchar++;}
"+"|"-"|"*"|"/"|"++"|"--"|"%"|"&&"|"!=" {operator++;}
\n {token =(keyword+identifier+number+specialchar+operator); printf("\nTotal Tokens Count : %d\n", token);}
%%

int main()
{
	printf("Enter Text : \n");
	yylex();
	return 0;
}

