#===========================================================#
# Fichero: Makefile
# Tema: Analizador léxico con FLEX para el lenguaje mini
# Fecha: Abril-2021 
# Uso: make
# Autor: Michael Sordo Seijo
#===========================================================#


mini: lex.yy.o
	gcc -o mini lex.yy.o -lfl

lex.yy.o: lex.yy.c
	gcc -c lex.yy.c

lex.yy.c: mini.l
	flex -i mini.l
clean:
	rm -r lex.yy.c lex.yy.o mini
