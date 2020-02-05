%{
int cp=0;
%}
%%
"." {cp++;}
%%
main()
{
    yylex();
    printf("Numero de oraciones:%d\n",cp);
}