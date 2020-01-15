%{
int num=0, nd=0, nt=0, mc=0;
%}
%%
[0-9]+ {ECHO; printf(" => Aceptado\n");num++;
int i;
for (i=0;i<yyleng;i++)
{
	if (yytext[i]=='2')
nd++;
}
if (yyleng==3)
nt++;
if(atoi(yytext) % 5 == 0)
mc++;
}
[^ \n\t]+ {ECHO; printf(" => No aceptado\n");}
%%
main()
{
yylex();
printf("Total de Aceptado: %d\n",num);
printf("Total de Digitos de dos: %d\n",nd);
printf("Total de Numeros con 3 Cifras: %d\n",nt);
printf("Total de Numeros Multiplos de 5: %d\n",mc);
}