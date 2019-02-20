          .globl __start
          .data 0x10000000
M:        .space 4
Q: 		  .space 4
R:        .space 4
          
          .text 0x00400000
__start:  li $a0,'M'
          la $a1, M
          jal InputV
		  
		  li $a0,'Q'
		  la $a1, Q
		  jal InputV

		  la $a0, M
		  la $a1, Q
		  la $a2, R
		  jal MultV

		  la $a0, 'R'
		  la $a1, R
		  jal PromptV

          li $v0,10
          syscall
		  

InputV:   li $v0, 11 
          syscall				#Imprime caracter
          li $v0, 11
          li $a0, '='
          syscall				#Imprime '='	
          li $v0, 5
          syscall
          sw $v0, 0($a1)		#Guarda el valor introducido	
          jr $ra
		  
		  
PromptV:  li $v0, 11	
		  syscall				#Imprime el caracter R
		  li $v0, 11
		  li $a0, '='	
		  syscall				#Imprime '='
		  li $v0, 1
		  lw $a0, 0($a1)
		  syscall				#Muestra el resultado de la multiplicacion
		  jr $ra

		  
MultV:    lw $t0, 0($a0)
          lw $t1, 0($a1)
		  bgtz $t1, positivo  	#Comprueba que el segundo factor es positivo para poder hacer la resta del conteo
		  sub $t0, $zero, $t0	#Convierte t0 en negativo
		  sub $t1, $zero, $t1 	#Fuerza que t1 sea positivo
		  
positivo: add $t2, $zero, $zero #Inicializa t2 a 0


bucle:	  add $t2, $t2, $t0 	#Añade una repeticion de t0
          addi $t1, $t1, -1		#Resta 1 al contador
		  bgtz $t1, bucle		#Comprueba que no se ha llegado a 0 y repite la operacion
		  sw $t2, 0($a2)		#Guarda el valor final en la dirección de memoria R
		  jr $ra