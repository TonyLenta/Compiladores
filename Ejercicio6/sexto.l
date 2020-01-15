%%
[0-9]*[13579] {ECHO ; printf("Es impar\n");}
[^ \n\t]* {printf("No acpetada\n");}
%%
main()
{
yylex();
}