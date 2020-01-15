%%
[0-9]+ {
ECHO;
int num;
num=atoi(yytext);
if (num%2==0) {printf("Es par");}
else {printf("Es impar");}
}
[^ \n\t]* {ECHO; printf("No aceptado \n");}
%%
main()
{
yylex();
}