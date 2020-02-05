%{
int cp=0, cnp=0;
%}
%%
"." {cp++;}
[A-Za-z0-9]+ {cnp++;}
%%
main()
{
    yylex();
    printf("\n Numero de oraciones:%d\n",cp);
    printf("\n Numero de oraciones:%d\n",cnp);
}