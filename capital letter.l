%{
#include <stdio.h>
%}

%%

[A-Z]+                  { printf("Capital Letters: %s\n", yytext); }

[a-zA-Z_][a-zA-Z0-9_]*  { printf("Identifier: %s\n", yytext); }

[ \t\n]+                ;

.                       { printf("Invalid Input: %s\n", yytext); }

%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter Input: ");
    yylex();
    return 0;
}