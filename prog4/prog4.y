%{
#include<stdio.h>
#include<stdlib.h>
int yylex();
void yyerror(const char *msg);
%}
%token NUM
%left '+''-'
%left '*''/'
%%
input:exp {printf("%d\n",$$);exit(0);} 
exp:exp'+'exp {$$=$1+$3;}
|exp'-'exp {$$=$1-$3;}
|exp'*'exp {$$=$1*$3;}
|exp'/'exp {if($3==0){printf("Division by zero\n");return 0;}
else{$$=$1/$3;}}
|'('exp')' {$$=$2;}
|NUM {$$=$1;};
%%
void yyerror(const char *msg)
{
printf("error");
exit(0);
}
int main()
{
printf("Enter the expression:\n");
yyparse();
}
