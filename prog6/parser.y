%{
#include<stdio.h>
#include<stdlib.h>
int yylex();
void yyerror(const char *msg);
%}
%token A B
%%
Str:S '\n' {printf("Valid string\n");return 0;} 
S:A S B; 
|A B;
%%
int main()
{
printf("Type the string\n");
yyparse();
return 0;
}
void yyerror(const char *msg)
{
printf("Invalid String\n");
exit(1);
}
