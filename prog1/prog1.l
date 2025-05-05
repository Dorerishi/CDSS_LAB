%{
#include<stdio.h>
int char_count=0;
int word_count=0;
int space_count=0;
int line_count=0;
%}

%%
\n { line_count++; }
[\t\r" "]+ { space_count++; }
[A-Za-z0-9] {word_count++; char_count+=yyleng;}
. {char_count++;}
%%

int main(int argc, char ** argv){
if(argc<2){
printf("Usage: %s <file>\n",argv[0]);
return 1;
}
FILE *file = fopen(argv[1],"r");
if(!file){
perror("fopen");
return 1;
}
yyin = file;
yylex();

printf("Character:%d\n",char_count);
printf("Words:%d\n",word_count);
printf("Spaces:%d\n",space_count);
printf("Lines:%d\n",line_count);
fclose(file);
return 0;

}