%%
[0-9]+ {ECHO; printf("Aceptado\n");}
[^ \n\t]+ {ECHO; printf("No aceptado\n");}

%%
main()
{
yylex();
}