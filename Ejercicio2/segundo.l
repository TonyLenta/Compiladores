%%
[0-9] {printf("Es un digito\n");}
[a-z] {printf("Es una letra minuscula\n");}
%%
main()
{
yylex();
}