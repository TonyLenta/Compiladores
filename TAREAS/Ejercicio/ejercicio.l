%{
int ac=0;
%}
%%
[0-9]+ {
ECHO;
int numero,i=0,j=0;
numero=atoi(yytext);
for(i=0;i<yyleng;i++)
	{
        for(j=yyleng-1;j>=0;j--)
		{
            if(yytext[i]==yytext[j])
			{
			ac++;
               printf("es palindroma \n");
            }
            else
			{
                printf("no es palindroma \n");
         	}
        }
    }
	
printf("La longitud cadena es:%d\n",yyleng);	
printf("Numeros palindromos ingresados:%d\n",ac);
}
[^ \n\t]* {
ECHO; printf("No aceptado\n");
}
%%
main()
{
yylex();
}