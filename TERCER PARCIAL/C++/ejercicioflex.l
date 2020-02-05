%{
    int pr=0, id=0, cad=0, oa=0, asi=0, sim=0; 
%}
%%
"void"|"main"|"cout"|"getch"|"cin"|"int" {ECHO; printf("=> Palabra Reservada\n");pr++;}  
[A-Za-z][A-Za-z0-9]* {ECHO; printf("=> Identificador\n");id++;}
["][^""""\n]*["] {ECHO; printf(" => Cadena\n");cad++;}
"+"|"-"|"*"|"/"|"++"|"--" {ECHO; printf(" => Operador aritmetico\n");oa++;}
"=" {ECHO; printf(" => Asignacion\n");asi++;}
">>"|"<<"|"("|")"|"{"|"}"|";" {ECHO; printf(" => Simbolo\n");sim++;}
%%
main()
{
    yylex();
    printf("El total de palabras reservadas: %d\n",pr);
    printf("El total de identificadores: %d\n",id);
    printf("El total de cadenas: %d\n",cad);
    printf("El total de operadores aritmetico: %d\n", oa);
    printf("El total de asignacion: %d\n",asi);
    printf("El total de simbolos: %d\n", sim);  
}