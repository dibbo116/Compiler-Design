%{

#include<stdio.h>
void yyerror(char *s);
int yylex();
%}

%token NUM FNUM ADD ASSIGN ID SEMI LP RP LB RB DOUBLE INT FLOAT MAIN WHILE
%start sam


%%
sam: INT MAIN LP RP LB FLOAT exp2 INT exp2 RB
    ;
exp2: ID ASSIGN exp1 SEMI
    ;
exp1: number 
    |exp1 ADD number 
    |exp1 ADD ID 
    |ID 
    ;
number:NUM
    | FNUM
    ;
%%

int main()
{
    yyparse();
    printf("Parsing finished\n");
} 

void yyerror(char *s)
{
    fprintf(stderr, "Error: %s\n", s);
}