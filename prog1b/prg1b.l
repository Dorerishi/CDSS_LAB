%{
#include<stdio.h>
int i=0;
%}


letter [a-zA-Z]
digit [0-9]

%%
{letter}({letter}|{digit})* {i++;}
{digit}({letter}|{digit})* {i;}
.|\n { yyterminate(); }
%%
int yywrap(){
return 1;
}

int main(){
printf("Text to read:");
yyin=stdin;
yylex();
printf("Value of i: %d \n",i);
return 0;
}
