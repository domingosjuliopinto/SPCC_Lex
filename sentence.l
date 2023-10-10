%{
#include<stdio.h>
int nlines=1,nwords,nchars,sc=0, tc=0, ch=0; 
%}

/*Rule Section*/
%%
\n {
	nchars++;nlines++; 
	}
([ ])+ sc++; 
\t tc++; 
. ch++;
[^ \n\t]+ {nwords++, nchars=nchars+yyleng;}
%%


int yywrap(void)  
{
 return 1;
}


int main()
{
	yyin= fopen("text.txt","r");
	yylex();
	printf("\nNo. of lines=%d", nlines);
	printf("\nNo. of words=%d", nwords);
	printf("\nNo. of characters=%d", nchars);
	printf("\nNo. of spaces=%d", sc);
	printf("\nNo. of tabs=%d", tc);
	return 0;	
}