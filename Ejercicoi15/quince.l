%{
int num=0;
%}
%%
[0-9]+ {ECHO; printf("=> Aceptado\n");num++;}
[^ \n\t]+ {ECHO; printf("=> No aceptado\n");}

%%
main()
{
yylex();
printf("Total de aceptados: %d", num);
}