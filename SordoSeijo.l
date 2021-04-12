%{
#include <stdio.h>
#include "tokens.h"
int num_lineas = 1;
char cadena_caracteres[150];
 
 
%}

%x COMENTARIOMULTI
%x COMENTARIO
%x CADENA_ARRANQUE


ESPACIOS [ \t]+  
CONSTANTE_REAL ({REAL}|{REALMANTISA})
CONSTANTE_ENTERA ({DECIMAL}|{OCTAL}|{HEXADECIMAL})
REAL ({CONSTANTE_ENTERA}\.{CONSTANTE_ENTERA})
OPERADORES ({ARITMETICOS}|{BITS}|{RELACIONALES}|{ASIGNACION}|{LOGICOS}|{ACCESS_MEM})
RUTA "|".*"|"
ERRORES (^{ESPACIOS}|{CONSTANTE_REAL}|{CONSTANTE_ENTERA}|{REAL}|{OPERADORES}|{RUTA})
CARACTER ({CARACTERUNICO}|{ESCAPADOS}|{CARACTEROCTAL}|{CARACTERHEXA})
CARACTERUNICO [a-zA-Z0-9]
ESCAPADOS ((\#\')|(\#\#)|(\#a)|(\#b)(\#f)|(\#n)|(\#r)|(\#t)|(\#v))
CARACTEROCTAL \#((1[0-7][0-9A-Fa-f])|([0-9a-fA-F]))
CARACTERHEXA \#[hH](([0-7][0-9A-Fa-f])|([0-9a-fA-F]))

POTENCIA "**"
MOD_ASIG "=%"
OR_ASIG  "=|"
NEQ	 "!="
INDIRECCION "^."
SUMA_ASIG "=+"
FI_ASIG   "=<-"
POT_ASIG  "=**"
AND "&&"
RESTA_ASIG "=-"
FD_ASIG "=->"
GE "=>"
OR "||"
MULT_ASIG "=*"
AND_ASIG "=&"
LE "=<"
FLECHA_IZDA "<-"
DIV_ASIG "=\"
XOR_ASIG "=@"
EQ "=="
FLECHA_DCHA "->"

IDENTIFICADOR [a-zA-Z_][a-zA-Z0-9_]*
DELIMITADORES "{"|"}"|"("|")"|":"|";"|","|"->"
ARITMETICOS "+"|"-"|"*"|"/"|"%"|"**"
BITS "<-"|"->"|"&"|"/"|"@"|"~"
RELACIONALES "<"|">"|"<="|">="|"=="|"!="
ASIGNACION "="|"=+"|"=-"|"=*"|"=/"|"=%"|"=**"|"=<-"|"=->"|"=&"|"=@"|"|"
LOGICOS "!"|"&&"|"||"
ACCESS_MEM "."|"^"|"["|"]"|"^."|"\\"
DECIMAL [0-9]*
FLOAT [0-9]*\.[0-9]*
OCTAL ([#][0-7]+)*
HEXADECIMAL ([#][hH][0-9a-fA-F]*)
REALMANTISA ({CONSTANTE_ENTERA}*\.{CONSTANTE_ENTERA}?"exp"{1}[+-]*{CONSTANTE_ENTERA})




%%
 


\n		num_lineas++;
ARRAY   	printf("Linea %i, palabra reservada : %s\n", num_lineas, yytext);   {return ARRAY;}
CABECERA        printf("Linea %i, palabra reservada : %s\n", num_lineas, yytext);   {return CABECERA;}
CADA            printf("Linea %i, palabra reservada : %s\n", num_lineas, yytext);   {return CADA;}
CADENA		printf("Linea %i, palabra reservada : %s\n", num_lineas, yytext);   {return CADENA;}
CARACTER	printf("Linea %i, palabra reservada : %s\n", num_lineas, yytext);   {return CARACTER;}
CONJUNTO	printf("Linea %i, palabra reservada : %s\n", num_lineas, yytext);   {return CONJUNTO;}
CONSTANTES	printf("Linea %i, palabra reservada : %s\n", num_lineas, yytext);   {return CONSTANTES;}
CONTINUAR	printf("Linea %i, palabra reservada : %s\n", num_lineas, yytext);   {return CONTINUAR;}
CTC_CADENA	printf("Linea %i, palabra reservada : %s\n", num_lineas, yytext);   {return CTC_CADENA;}
CTC_ENTERA 	printf("Linea %i, palabra reservada : %s\n", num_lineas, yytext);   {return CTC_ENTERA;}
CTC_REAL	printf("Linea %i, palabra reservada : %s\n", num_lineas, yytext);   {return CTC_REAL;}
DE		printf("Linea %i, palabra reservada : %s\n", num_lineas, yytext);   {return DE;}
DEFECTO		printf("Linea %i, palabra reservada : %s\n", num_lineas, yytext);   {return DEFECTO;}
DEVOLVER	printf("Linea %i, palabra reservada : %s\n", num_lineas, yytext);   {return DEVOLVER;}
EJECUTA		printf("Linea %i, palabra reservada : %s\n", num_lineas, yytext);   {return EJECUTA;}
ENCAMBIO	printf("Linea %i, palabra reservada : %s\n", num_lineas, yytext);   {return ENCAMBIO;}
ENTERO		printf("Linea %i, palabra reservada : %s\n", num_lineas, yytext);   {return ENTERO;}
ES		printf("Linea %i, palabra reservada : %s\n", num_lineas, yytext);   {return ES;}
ESCAPE		printf("Linea %i, palabra reservada : %s\n", num_lineas, yytext);   {return ESCAPE;}
ESTRUCTURA	printf("Linea %i, palabra reservada : %s\n", num_lineas, yytext);   {return ESTRUCTURA;}
ETIQUETA	printf("Linea %i, palabra reservada : %s\n", num_lineas, yytext);   {return ETIQUETA;}
EXCEPCION	printf("Linea %i, palabra reservada : %s\n", num_lineas, yytext);   {return EXCEPCION;}
FICHERO		printf("Linea %i, palabra reservada : %s\n", num_lineas, yytext);   {return FICHERO;}
FIN 		printf("Linea %i, palabra reservada : %s\n", num_lineas, yytext);   {return FIN;}
FUNCION		printf("Linea %i, palabra reservada : %s\n", num_lineas, yytext);   {return FUNCION;}
HACER		printf("Linea %i, palabra reservada : %s\n", num_lineas, yytext);   {return HACER;}
HASH		printf("Linea %i, palabra reservada : %s\n", num_lineas, yytext);   {return HASH;}
LANZA		printf("Linea %i, palabra reservada : %s\n", num_lineas, yytext);   {return LANZA;}
MIENTRAS	printf("Linea %i, palabra reservada : %s\n", num_lineas, yytext);   {return MIENTRAS;}
NADA		printf("Linea %i, palabra reservada : %s\n", num_lineas, yytext);   {return NADA;}
OTRA		printf("Linea %i, palabra reservada : %s\n", num_lineas, yytext);   {return OTRA;}
PARA		printf("Linea %i, palabra reservada : %s\n", num_lineas, yytext);   {return PARA;}
PRINCIPIO	printf("Linea %i, palabra reservada : %s\n", num_lineas, yytext);   {return PRINCIPIO;}
PROGRAMA	printf("Linea %i, palabra reservada : %s\n", num_lineas, yytext);   {return PROGRAMA;}
REAL		printf("Linea %i, palabra reservada : %s\n", num_lineas, yytext);   {return REAL;}
REF		printf("Linea %i, palabra reservada : %s\n", num_lineas, yytext);   {return REF;}
SALTAR 		printf("Linea %i, palabra reservada : %s\n", num_lineas, yytext);   {return SALTAR;}
SI		printf("Linea %i, palabra reservada : %s\n", num_lineas, yytext);   {return SI;}
SINO		printf("Linea %i, palabra reservada : %s\n", num_lineas, yytext);   {return SINO;}
TIPOS 		printf("Linea %i, palabra reservada : %s\n", num_lineas, yytext);   {return TIPOS;}
UNION 		printf("Linea %i, palabra reservada : %s\n", num_lineas, yytext);   {return UNION;}
VARIABLES 	printf("Linea %i, palabra reservada : %s\n", num_lineas, yytext);   {return VARIABLES;}




{IDENTIFICADOR}    {printf("Linea %i, identificador: %s\n", num_lineas, yytext); 	     return IDENTIFICADOR;}
{RUTA}		   {printf("Linea %i, ruta: %s\n", num_lineas, yytext);                      return RUTA;}
{POTENCIA}	   {printf("Linea %i, operador potencia: %s\n", num_lineas, yytext);         return POTENCIA;}
{MOD_ASIG}	   {printf("Linea %i, operador mod_asig: %s\n", num_lineas, yytext);         return MOD_ASIG;}	
{OR_ASIG}	   {printf("Linea %i, operador or_asig: %s\n", num_lineas, yytext);          return OR_ASIG;}
{NEQ}		   {printf("Linea %i, operador neq: %s\n", num_lineas, yytext);              return NEQ;}	
{INDIRECCION} 	   {printf("Linea %i, operador indireccion: %s\n", num_lineas, yytext);      return INDIRECCION;}
{SUMA_ASIG}        {printf("Linea %i, operador suma_asig: %s\n", num_lineas, yytext);        return SUMA_ASIG;}
{FI_ASIG}	   {printf("Linea %i, operador fi_asig: %s\n", num_lineas, yytext);          return FI_ASIG;}
{POT_ASIG}	   {printf("Linea %i, operador pot_asig: %s\n", num_lineas, yytext);         return POT_ASIG;}
{AND}              {printf("Linea %i, operador and: %s\n", num_lineas, yytext);              return AND;}
{RESTA_ASIG}       {printf("Linea %i, operador resta_asig: %s\n", num_lineas, yytext);       return RESTA_ASIG;}
{FD_ASIG}          {printf("Linea %i, operador fd_asig: %s\n", num_lineas, yytext);          return FD_ASIG;}
{GE} 		   {printf("Linea %i, operador ge: %s\n", num_lineas, yytext);               return GE;}
{MULT_ASIG}        {printf("Linea %i, operador mult_asig: %s\n", num_lineas, yytext);        return MULT_ASIG;}
{AND_ASIG}         {printf("Linea %i, operador and_asig: %s\n", num_lineas, yytext);         return AND_ASIG;}
{EQ}               {printf("Linea %i, operador eq: %s\n", num_lineas, yytext);               return EQ;}
{FLECHA_DCHA}      {printf("Linea %i, operador flecha_dcha: %s\n", num_lineas, yytext);      return FLECHA_DCHA;}
{OPERADORES}       {printf("Linea %i, operador: %s\n", num_lineas, yytext);                  return(yytext[0]);}		
{CONSTANTE_ENTERA} {printf("Linea %i, ctc entera: %s\n", num_lineas, yytext);		     return CTC_ENTERA;}
{DELIMITADORES}    {printf("Linea %i, delimitador: %s\n", num_lineas, yytext);   	     return(yytext[0]);}
{CONSTANTE_REAL}   {printf("Linea %i, ctc real: %s\n", num_lineas, yytext);                  return CTC_REAL;}

"'"{CARACTER}"'"          {printf("Linea %i, caracter: %s\n", num_lineas, yytext);}
{ESPACIOS}	   
{ERRORES}	   {printf("Linea %i, ERROR: %s\n", num_lineas, yytext);}



"#-"	BEGIN(COMENTARIOMULTI);
<COMENTARIOMULTI>\n num_lineas++;
<COMENTARIOMULTI>. ;
<COMENTARIOMULTI>"-#"	BEGIN(INITIAL);

"##"	BEGIN(COMENTARIO);
<COMENTARIO>. ; 
<COMENTARIO>\n {num_lineas++; 	BEGIN(INITIAL);}

"'"	BEGIN(CADENA_ARRANQUE); {strcat(cadena_caracteres,yytext);} 
<CADENA_ARRANQUE>{CARACTER}*((" "))* ; {strcat(cadena_caracteres,yytext);} 
<CADENA_ARRANQUE>\n {num_lineas++;}  
<CADENA_ARRANQUE>"'" BEGIN(INITIAL); {strcat(cadena_caracteres,yytext); printf("Linea %i, cadena: %s\n", num_lineas, cadena_caracteres); return CTC_CADENA;}


%%

int yywrap() {
  return(1);
  }

int main(int argc, char *argv[]) {

  if (argc < 2) {
    printf("Faltan argumentos\n");
    }
  else {
    yyin = fopen(argv[1],"r");
    while (yylex());
    }
  }
