%{
    int ac=0;
%}
%%
[0-9]+ {
    int aux = 0, igual = 0,i=0,num;
    num=atoi(yytext); 
    if(num>=10)
	{
        for(i = yyleng - 1; i >= 0; i--) 
		{
            if(yytext[i] == yytext[aux]) 
			{
                igual++;
            }
            aux++;
        }
        if(yyleng == igual) 
		{
            printf( "Es paliromo.");
            ac++;
        } else 
		{
            printf( "No es paliromo");
        }
        
        printf("\nLa longitud es: %d\n",yyleng);

        printf("\nNumeros poliromos totales: %d\n",ac);
    }
	else 
	{
	printf( "El numero debe tener dos cifras");
	}
}
[^ \n\t]* {ECHO; printf(" No aceptado\n");}
%%
main()
{
    yylex();
}