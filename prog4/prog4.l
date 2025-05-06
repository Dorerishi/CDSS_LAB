%{
#include<stdio.h>
#include"prog4.tab.h"

%}

%%

[0-9]+ {yylval = atoi(yytext);return NUM;}
[+\-*()] {return yytext[0];}
[\t] {;}
\n   {return 0;}
. {;}

%%

int yywrap(){
return 1;
}


