%{
int numc=0;
%}
%%
[0-9]+ {
int i, num;
num=atoi(yytext);
ECHO; 
printf("=> Aceptado\n",num);
if(yyleng==3)
{
numc++;
}
}
[^ \n\t]+ {ECHO; printf("=> No aceptado\n");}

%%
main()
{
yylex();
printf("Total de numeros con tres cifras: %d", numc);
}
