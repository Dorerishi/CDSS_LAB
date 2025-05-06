%{
#include "parser.tab.h"
%}
%%
[a-zA-z] return L;
[0-9] return D;
%%

