%{
#include<stdio.h>
#include<stdlib.h>
%}
%token L D
%%
var : L E { printf("Valid Variable\n"); return 0; }
E   : E L
    | E D
    | /* empty */
    ;
%%
int main()
{
    printf("Type the variable\n");
    yyparse();
    return 0;
}
int yyerror()
{
    printf("Invalid Variable\n");
    exit(0);
}