%%
[0-9]+ {
ECHO;
int num,i;
num=atoi(yytext);
if (num%2==0) {printf("\n Es par\n");}
else {printf("Es impar\n");}
printf("La longitud es:%d\n",yyleng);
for(i=0;i<=yyleng-1;i++)
printf("El primer caracter %d es: %c\n",i,yytext[i]);
}
[^ \n\t]* {
ECHO; printf("No aceptado\n");
}
%%
main()
{
yylex();
}