%{
#include "y.tab.h"
%}
%%
[a-zA-Z]  return L;
[0-9]     return D;
%%