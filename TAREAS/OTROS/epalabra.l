%{
int palabras=0, oraciones=0, r=0, es=0, i;
%}
%%
[A-Za-z]+ {palabras++;ECHO;
printf(" %d caracteres\n",yyleng);
if((yytext[yyleng-1]=='R')||(yytext[yyleng-1]=='r')){
r++;
}
for(i=0;i<=yyleng-1;i++)
{
if((yytext[i]=='E')&&(yytext[i+1]=='S')||(yytext[i]=='E')&&(yytext[i+1]=='s')||(yytext[i]=='e')&&(yytext[i+1]=='s')){
es++;
}	
}
}
[.] {oraciones++;}
%%
main()
{
printf("Ingrese una palabra: \n");
yylex();
printf("\nTotal de palabras terminadas en R,r: %d", r);
printf("\nTotal de palabras terminadas en ES, es, Es: %d", es);	
printf("\nTotal de Palabras: %d", palabras);
printf("\nTotal de Oraciones: %d", oraciones);
}