%{
#include<stdio.h>
int i=0;
%}
digit  [0-9]
letter [a-zA-Z_]
%%
{letter}({letter}|{digit})*  { i++; }
{digit}({letter}|{digit})*  { /* no count */ }
%%
int main()
{
    printf("Enter the values:\n");
    yylex();
    printf("Number of identifiers = %d\n", i);
    return 0;
}