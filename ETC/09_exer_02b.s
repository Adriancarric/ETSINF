          .globl __start
          .data 0x10000000
demana:   .asciiz "Escriba alguna cosa: "
respuesta: .asciiz "Ha escrito: "
length:   .asciiz "La longitud es: "
cadena:   .space 80             

          .text 0x00400000
__start:  la $a0, demana        
          la $a1, cadena        
          li $a2, 80            
          jal InputS            

		  la $a0, respuesta
		  la $a1, cadena
		  jal PromptS

		  la $a0, cadena
		  jal StrLength
		  
		  move $t0, $v0
		  li $v0, 4
		  la $a0, length
		  syscall				#Imprime el valor de length
		  li $v0, 1
		  move $a0, $t0
		  syscall				#Imprime la cantidad de caracteres

		 

          li $v0,10
          syscall

InputS:   li $v0, 4
          syscall				#Imprime el texto de la variable demana
          li $v0, 8
          move $a0, $a1
          move $a1, $a2
          syscall				#Guarda la cadena en memoria limitando el maximo de caracteres a 80
          jr $ra

PromptS:  li $v0, 4
          syscall				#Imprime el texto de la variable respuesta
		  move $a0, $a1
		  li $v0, 4
		  syscall				#Imprime la cadena guardada por InputS
		  jr $ra

StrLength:
		  addi $v0, $zero, -1	#Inicializa a -1 por el caracter NUL al final de la cadena
		  li $t1, 10			#Valor ASCII del caracter NUL
		  
bucle:	  lb $t0, 0($a0)		#Coge el valor de cadena
		  addi $a0, $a0, 1		#Aumenta 1 la direccion de la variable cadena
		  addi $v0, $v0, 1		#Aumenta 1 el contador de caracteres
		  bne $t0, $t1, bucle	#Bucle si el caracter es diferente de NUL
		  jr $ra

