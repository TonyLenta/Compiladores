%{
int cp=0, cnp=0, cc=0, cdp=0, cpa=0;
%}
%%
"." {cp++;}
[A-Za-z0-9]+ {cnp++;
int i;
for (i=0;i<=yyleng;i++)
{
	if ((yytext[i]=='a') || (yytext[i]=='A'))
	{cpa++; i=yyleng;}
	}
}
"," {cc++;}
":" {cdp++;}
%%
main()
{
	yylex();
	printf("\nNumero de Oraciones: %d\n",cp);
	printf("\nNumero de Palabras: %d\n",cnp);
	printf("\nNumero de Comas: %d\n",cc);
	printf("\nNumero de Dos Puntos: %d\n",cdp);
	printf("\nNumero de Palabras con a-A: %d\n",cpa);
}