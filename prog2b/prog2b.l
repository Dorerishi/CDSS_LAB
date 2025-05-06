
%{
#include<stdio.h>
int c=0;

%}

%%
[a-zA-Z]+[ \t]+(and|or|but|yet|so)+[ \t]+[a-zA-Z]+ {c=1;}
.|\n {yyterminate();}
%%


void main(){

printf("enter the text\n");

yylex();
if(c==1){
printf("The given statement is compound\n");
}
else
{
printf("The given statement is simple\n");
}
}
int yywrap(){
return 1;
}