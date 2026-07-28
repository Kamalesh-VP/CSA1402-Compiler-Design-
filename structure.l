%{
#include <stdio.h>
%}

%%

[a-zA-Z]+      { printf("WORD: %s\n", yytext); }
[0-9]+         { printf("NUMBER: %s\n", yytext); }
.              { /* Ignore other characters */ }

%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter input: ");
    yylex();
    return 0;
}