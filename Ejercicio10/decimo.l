%%
[0-9]+ {
ECHO;
int num;
num=atoi(yytext);
if (num%2==0) {printf("\n Es par\n");}
else {printf("Es impar\n");}
printf("La longitud es:%d\n",yyleng);
printf("El primer caracter es: %c\n",yytext[0]);
}
[^ \n\t]* {
ECHO; printf("No aceptado\n");
}
%%
main()
{
yylex();
}