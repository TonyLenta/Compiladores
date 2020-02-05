%{
int  cNn=0, cva=0, es=0, i,cpRr=0,cvc=0;
%}
%%
[A-Za-z0-9]+ {
for(i=0; i<yyleng; i++)
{
		if( (yytext[0]=='n') || (yytext[0]=='N')  )
		{cNn++;	break;}
}
for(i=0; i<yyleng; i++)
{
		if( (yytext[i]=='r') || (yytext[i]=='R')  )
		{cpRr++;}
}

if((yytext[yyleng-1]=='a')||(yytext[yyleng-1]=='e') || (yytext[yyleng-1]=='o') || (yytext[yyleng-1]=='A') || (yytext[yyleng-1]=='E') || (yytext[yyleng-1]=='O')){
cva++;
}

for(i=0; i<yyleng; i++)
{
		if
		((yytext[i]=='i') || (yytext[i]=='I') ||(yytext[i]=='u') || (yytext[i]=='U'))
		{cvc++;	break;}
}
}

%%
main()
{
printf("Ingrese una palabra: \n");
yylex();
printf("\nTotal de palabras que empiensen por N o n: %d", cNn);
printf("\nTotal de  R o r. : %d", cpRr);
printf("\nTotal de palabras que terminen en una vocal abierta  Mayúscula o minúsculas.: %d", cva);
printf("\nTotal de palabras que tengan por lo menos una vocal cerrada  Mayúscula o minúsculas.: %d", cvc);

}