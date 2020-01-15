%{
int numc=0, ca=0, ce=0, ci=0, co=0, cu=0;;
%}
%%
[a-z|A-z]+ {
	int i;
	for(i=0; i<yyleng; i++)
	{
		if(yytext[i]=='a' || yytext[i]=='A')
		{
		ca++;
		}
		if(yytext[i]=='e' || yytext[i]=='E')
		{
		ce++;
		}
		if(yytext[i]=='i' || yytext[i]=='I')
		{
		ci++;
		}if(yytext[i]=='o' || yytext[i]=='O')
		{
		co++;
		}if(yytext[i]=='u' || yytext[i]=='U')
		{
		cu++;
		}
		
	}
}
%%

main()
{
yylex();
printf("Total vocales a: %d\n", ca);
printf("Total vocales e: %d\n", ce);
printf("Total vocales i: %d\n", ci);
printf("Total vocales o: %d\n", co);
printf("Total vocales u: %d\n", cu);
}
