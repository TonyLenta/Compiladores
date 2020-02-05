%{
	int ca=0, cna=0;
%}
%%
[02468]+[0-9]*"."[0-9]*[13579]+ {printf("Numero aceptado \n"); ca++;}
[^ \n\t]* {ECHO; printf(" No aceptado \n");
cna++;}
%%
main(){
	yylex();
	printf("Total de numeros aceptados: %d\n",ca);
	printf("Total de numeros no aceptados: %d\n",cna);
}