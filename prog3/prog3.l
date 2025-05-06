%{
#include<stdio.h>
int  pi=0,ni=0,n=0,p=0;
%}
%%
[-][0-9]+ {ni++;}
[+]?[0-9]+ {pi++;}
[-][0-9]*\.[0-9]+ {n++;}
[+]?[0-9]*\.[0-9]+ {p++;}
%%
int yywrap()
{
return 1;
}
int main(int argc,char *argv[])
{

yyin=fopen("int.txt","r"); 
yylex();
printf("Number of positive integer %d\n",pi);
printf("Number of negative integer %d\n",ni);
printf("Number of positive fraction %d\n",p);
printf("Number of negative fraction %d\n",n);
return 0;

}


