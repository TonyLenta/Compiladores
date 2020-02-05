%{
int cp=0, cnp=0, cnc=0;
%}
%%
"." {cp++;}
[A-Za-z0-9]+ {cnp++;}
"," {cnc++;}
%%
main()
{
    yylex();
    printf("\n Numero de oraciones:%d\n",cp);
    printf("\n Numero de palabras:%d\n",cnp);
    printf("\n Numero de comas:%d\n",cnc);
}