%{
int cp=0, cnp=0, cnc=0,cndp=0;
%}
%%
"." {cp++;}
[A-Za-z0-9]+ {cnp++;}
"," {cnc++;}
":" {cndp++;}
%%
main()
{
    yylex();
    printf("\n Numero de oraciones:%d\n",cp);
    printf("\n Numero de palabras:%d\n",cnp);
    printf("\n Numero de comas:%d\n",cnc);
    printf("\n Numero de dos puntos:%d\n",cndp);
}