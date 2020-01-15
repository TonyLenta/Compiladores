%%
[0-9]+ 
{
ECHO;
int num,i;
num=atoi(yytext);

if (num%2==0) {printf("\n Es par\n");}
else {printf("Es impar\n");}
printf("La longitud es:%d\n",yyleng);
printf("Cantidad invertida es: \n");
for(i=yyleng;i>=0;i--)
printf("%c",yytext[i]);
}
[^ \n\t]* {
ECHO; printf("No aceptado\n");
}
%%
main()
{
yylex();
}