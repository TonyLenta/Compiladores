%%
[0-9]+"."[0-9]+ {ECHO; printf("Es decimal\n");}
[^ \n\t]* {ECHO; printf("No aceptado\n");}
%%
main()
{
yylex();
}