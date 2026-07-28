%{
/* C declarations */
#include <stdio.h>
%}

/* Definitions (optional) */

%%
/* Rules section */
pattern1    { action1; }
pattern2    { action2; }
%%
/* User subroutines */
int yywrap()
{
    return 1;
}

int main()
{
    yylex();
    return 0;
}