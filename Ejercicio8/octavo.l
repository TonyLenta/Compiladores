%%
[0-9]+ {ECHO; 


}
[^ \n\t]* {ECHO; printf("No aceptado\n");}
%%
main()
{
yylex();
}