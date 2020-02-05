%{
int cp=0, cnp=0, cc=0,cdp=0,cla=0,el=0,ta=0;
%}
%%
"." {cp++;}
[A-Za-z0-9]+ {cnp++;
int i;
for(i=0;i<yyleng;i++)
{
	if ((yytext[i]=='a') || (yytext[i]=='A'))
	{cla++; break;}
}
for(i=0;i<yyleng;i++)
{
	if ((yytext[i]=='a') || (yytext[i]=='A'))
	{ta++;}
}
if ((yytext[yyleng-2]=='e' && yytext[yyleng-1]=='l') || (yytext[yyleng-2]=='E' && yytext[yyleng-1]=='l') || (yytext[yyleng-2]=='E' && yytext[yyleng-1]=='L'))
{el++;}
}
"," {cc++;}
":" {cdp++;}
%%
main()
{
yylex();
printf("Numero de oraciones: %d\n",cp);
printf("Numero de palabras: %d\n",cnp);
printf("Numero de comas: %d\n",cc);
printf("Numero de dos puntos: %d\n",cdp);
printf("Numero de letras A y a: %d\n",cla);
printf("\nTotal de Aa: %d", ta);	
printf("\nTotal de palabras terminadas en El, el, El: %d", el);	
}