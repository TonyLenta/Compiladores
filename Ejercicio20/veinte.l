%{
int num, 
%}
%%
[0-9]+ {ECHO; printf(" => Aceptado\n");

}
[^ \n\t]+ {ECHO; printf(" => No aceptado\n");}
%%
main()
{
yylex();
printf("Total de Aceptado: %d\n",num);
}


%{
int numc=0;
%}
%%
[0-9]+ {
int i, num;
num=atoi(yytext);
ECHO;
printf("=> Aceptado\n",num); 
for(i=yyleng;i>=0;i--)
if(yytext[i]=='2')
{
numc++;
}
}
[^ \n\t]+ {ECHO; printf("=> No aceptado\n");}

%%
main()
{
yylex();
printf("Total de numeros 2: %d", numc);
}
