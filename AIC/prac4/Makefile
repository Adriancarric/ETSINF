PRAC=4

CFLAGS		= -O2 -fno-strength-reduce -fPIC -Wall 
LFLAGS		= -lm
CC		= gcc

TARGET=mips-ooo
OBJECTS=input.lex.o input.yacc.o etiquetas.o f_busqueda.o f_confirmacion.o f_ejecucion.o f_lanzamiento.o f_transferencia.o instrucciones.o main.o memoria.o prediccion.o presentacion.o f_lanzamiento_alum.o f_transferencia_alum.o

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) $(OBJECTS) -o $(TARGET) $(LFLAGS)

clean:
	rm -f $(OBJECTS) $(TARGET)

%.o: %.c
	$(CC) -c $(CFLAGS) -o $@ -D PRAC=$(PRAC) $<

%.s: %.c
	$(CC) -S $(CFLAGS) -mtune=intel -o $@ -D PRAC=$(PRAC) $<

%.o: %.s
	$(CC) -c $(CFLAGS) -o $@ -D PRAC=$(PRAC) $<

%.lex.c: %.lex.l
	lex -t $*.lex.l > $*.lex.c

input.lex.o: input.yacc.h

%.yacc.h: %.yacc.y
	bison -o $*.yacc.c -d $*.yacc.y

%.yacc.c: %.yacc.y
	bison -v -o $*.yacc.c $*.yacc.y 

