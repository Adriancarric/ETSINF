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
		  syscall
		  li $v0, 1
		  move $a0, $t0
		  syscall

		  la $a0, cadena
		  li $a1, 0
		  jal StrChar

		  move $t0, $v0
		  li $v0, 4
		  la $a0, length
		  syscall
		  li $v0, 1
		  move $a0, $t0
		  syscall

          li $v0,10
          syscall

InputS:   li $v0, 4
          syscall			#Imprime el texto de la variable demana
          li $v0, 8
          move $a0, $a1
          move $a1, $a2
          syscall			#Guarda la cadena en memoria limitando el maximo de caracteres a 80
          jr $ra

PromptS:  li $v0, 4
          syscall			#Imprime el texto de la variable respuesta
		  move $a0, $a1
		  li $v0, 4
		  syscall			#Imprime la cadena guardada por InputS
		  jr $ra

StrLength:
		  addi $v0, $zero, -1
		  li $t1, 10
		  
bucle:	  lb $t0, 0($a0)
		  addi $a0, $a0, 1
		  addi $v0, $v0, 1
		  bne $t0, $t1, bucle
		  jr $ra

StrChar:  add $t0, $zero, $zero
		  addi $a1, $a1, 1
		  
bucle2:   lb $t1, 0($a0)
		  addi $a0, $a0, 1
		  addi $t0, $t0, 1
		  bne $a1, $t0, bucle2
		  move $v0, $t1
		  jr $ra