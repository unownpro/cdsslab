%{
#include "y.tab.h"
extern yylval;
%}
%%
[0-9]+           { yylval = atoi(yytext); return num; }
[\+\-\*\/]       { return yytext[0]; }
[()]             { return yytext[0]; }
.                { /* skip */ }
\n               { return 0; }
%%