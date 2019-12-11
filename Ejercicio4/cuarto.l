%%
[Dd][a-z]*[aeiou] {printf("=> Es una palabra aceptada \n");}
[^ \n\t]* {printf("Es una palabra no aceptada \n");}
%%
main()
{

printf("Por favor, ingrese una cadena:");
yylex();
}