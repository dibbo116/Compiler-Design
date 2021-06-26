%option noyywrap

%{
#include<stdio.h>     
#include "y.tab.h" 
%}

delim [ \t\n]
ws ({delim})+
digit [0-9]
number ({digit})+
point [.]
floatnum ({digit})*({point})(({digit})+)
letter [A-Za-z]
us [_]
letter_ ({us}|{letter})
id ({letter_})({letter_}|{digit})*

%%
{ws} {}
{floatnum} {return (FNUM);}
"double" {return (DOUBLE);}
"int" {return (INT);}
"float" {return (FLOAT);}
"main" {return (MAIN);}
"while" {return (WHILE);}
{number} {return (NUM);}
{id} {return (ID);}
"("  {return (LP);}
")" {return (RP);}
"{"  {return (LB);}
"}"  {return (RB);}
"=" {return (ASSIGN);}
"+" {return (ADD);}
";" {return (SEMI);}
. {printf("Not Matched\n");}
%%



