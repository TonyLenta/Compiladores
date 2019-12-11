%%
"D"[a-z]* {printf("=> Es una palabra aceptada\n");} 
"d"[a-z]* {printf("=> Es una palabra aceptada\n");}
[^ \n\t]* {printf("=> Es una palabra no aceptada\n");} 
%%
main()
{
yylex();
}