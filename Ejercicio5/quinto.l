%%
[0-9]*[02468] {ECHO;printf("=> Es par\n");} 
[^ \n\t]* {printf("=> No aceptado\n");}
%%
main()
{
yylex();
}