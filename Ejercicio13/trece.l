%{
int p=0,na=0,a=0,d=0,idos=0,tocho=0;
%}
%%
[0-9]*[02468] {ECHO; printf(" => Par\n");p++;
if(yytext[0]=='2')
 idos++; 
if(yytext[yyleng-1]=='8')
 tocho++;
}
[0-9]*[13579] {ECHO; printf(" => Impar\n");a++;
if(yytext[0]=='2')
 idos++;
if(yytext[yyleng-1]=='8')
 tocho++;
}
[^ \n\t]* {ECHO; printf(" => No aceptado\n"); na++;}

%%
main()
{
yylex();
printf(" Total de pares: %d\n",p);
printf(" Total de impares: %d\n",a);
printf(" Total que empiesa por dos: %d\n",idos);
printf(" Total que termine en ocho: %d\n",tocho);
printf(" total de no aceptadas:%d\n",na);
}