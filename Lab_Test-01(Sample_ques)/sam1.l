%option noyywrap

%{
#include<stdio.h>      
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
{floatnum} {printf("%s = is a Floating Point Number.\n",yytext);}
"double" {printf("%s = is a Double Data Type.\n",yytext);}
"int" {printf("%s = is Integer Data Type.\n",yytext);}
"float" {printf("%s = is a Float Data Type.\n",yytext);}
"main" {printf("%s = is a Main Fuction.\n",yytext);}
"while" {printf("%s = is a While loop.\n",yytext);}
{number} {printf("%s = is a  Number.\n",yytext);}
{id} {printf("%s = is an Identifier.\n",yytext);}
"("  {printf("%s = is a First Bracket Open.\n",yytext);}
")" {printf("%s = is a First Bracket Close.\n",yytext);}
"{"  {printf("%s = is a Third Bracket Open.\n",yytext);}
"}"  {printf("%s = is a Third Bracket Close.\n",yytext);}
"=" {printf("%s = is an Equal Sign.\n",yytext);}
"+" {printf("%s = is a Plus Sign.\n",yytext);}
";" {printf("%s = is Semicolon.\n",yytext);}
. {printf("Not Matched\n");}
%%



int main()
{
    yylex();
}