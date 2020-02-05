%{
	int palabra = 0, letra=0, oracion=0, terminacion=0;
%}
%%
[a-zA-ZÀ-ÿ[:space:].]+ {

	int va = 0;
	for(va = 0; va<yyleng; va++){
		//condicion de las palabras
		if(
			yytext[va]!=' ' && ( (yytext[va+1]==' ') || (yytext[va+1]=='\0') || (yytext[va+1]==',')|| (yytext[va+1]==';')|| (yytext[va+1]==':') )
		)
		{
			palabra++;
		}
		//condicion de las oraciones
		else if(
			 yytext[va]!=' ' && yytext[va+1]=='.'
		)
		{
			palabra++;
			oracion++;
		}
		//condicion de las palabras
		if( 
			(yytext[va]=='e') && (yytext[va+1]=='s') 
			|| (yytext[va]=='E') && (yytext[va+1]=='s')
			|| (yytext[va]=='E') && (yytext[va+1]=='S') 
		)
		{
			letra++;
		}
		//condicionde de las terminaciones
		if( 
			(yytext[va]!=' ') 
			&& ( (yytext[va+1]=='r') || (yytext[va+1]=='R') ) 
			&& ( (yytext[va+2]==' ') || (yytext[va+2]=='.') || (yytext[va+2]=='\0') || (yytext[va+2]==',')|| (yytext[va+2]==';')|| (yytext[va+2]==':') )
		)
		{
			terminacion++;
		}
	}
}
[^ \n\t]+ {
}
%%
main()
{
	yylex();
	printf("El total de oraciones son: %d\n", oracion);
	printf("El total de palabras son: %d\n", palabra);
	printf("El total de palabras \"es\", \"ES\", \"Es\" son: %d\n", letra);
	printf("El total de palabras que terminen con \"r\" o \"R\": %d\n", terminacion);
}
//* 0 o varios
//+ 1 o varios
//^ alt+94 significa no
//\n espacio en blanco
//\t tabulador
//Echo para imprimir el valor ingresado
//flex ejercicio.l
//gcc -o ejer lex.yy.c -lfl
//ejer <palabraeros.txt para ejecutar valores del documento txt
