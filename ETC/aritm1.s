                ##########################################################
                # Segmento de datos
                ##########################################################

                .data 0x10000000
reloj:          .word 0                # HH:MM:SS (3 bytes de menor peso)

cad_asteriscos: .asciiz "\n  **************************************"
cad_horas:      .asciiz "\n   Horas: "
cad_minutos:    .asciiz " Minutos: "
cad_segundos:   .asciiz " Segundos: "
cad_reloj_en_s: .asciiz "\n   Reloj en segundos: "

                ##########################################################
                # Segmento de código
                ##########################################################

                .globl __start
                .text 0x00400000

__start:        la $a0, reloj
				li $a1, 0x0000023C
                jal inicializa_reloj
				
				la $a0, reloj
                jal imprime_reloj
				
				la $a0, reloj
                jal devuelve_reloj_en_s
                move $a0, $v0
                jal imprime_s
				
                la $a0, reloj
                jal devuelve_reloj_en_s_sd
                move $a0, $v0
                jal imprime_s
				
				la $a0, reloj           
                jal devuelve_reloj_en_s_srd
                move $a0, $v0
                jal imprime_s

				             
salir:          li $v0, 10              # Código de exit (10)
                syscall                 # Última instrucción ejecutada
                .end


                ########################################################## 
                # Subrutina que imprime el valor del reloj
                # Entrada: $a0 con la dirección de la variable reloj
                ########################################################## 

imprime_reloj:  move $t0, $a0
                la $a0, cad_asteriscos  # Dirección de la cadena
                li $v0, 4               # Código de print_string
                syscall

                la $a0, cad_horas       # Dirección de la cadena
                li $v0, 4               # Código de print_string
                syscall

                lbu $a0, 2($t0)         # Lee el campo HH
                li $v0, 1               # Código de print_int
                syscall

                la $a0, cad_minutos     # Dirección de la cadena
                li $v0, 4               # Código de print_string
                syscall

                lbu $a0, 1($t0)         # Lee el campo MM
                li $v0, 1               # Código de print_int
                syscall

                la $a0, cad_segundos    # Dirección de la cadena
                li $v0, 4               # Código de print_string
                syscall

                lbu $a0, 0($t0)         # Lee el campo SS
                li $v0, 1               # Código de print_int
                syscall

                la $a0, cad_asteriscos  # Dirección de la cadena
                li $v0, 4               # Código de print_string
                syscall
                jr $ra

inicializa_reloj: 
                li $t0, 0x1F3F3F
                and $t0, $a1, $t0
                sw $t0, 0($a0)
                jr $ra				
				
inicializa_reloj_hh:
                sb $a1, 2($a0)
                jr $ra

inicializa_reloj_mm:
                sb $a2, 1($a0)
                jr $ra

inicializa_reloj_ss:
                sb $a3, 0($a0)
                jr $ra
				
				
devuelve_reloj_en_s:
                lbu $t0, 2($a0)
                li $t1, 3600
                multu $t0, $t1
                mflo $v0
                mfhi $t2
                bgtz $t2, salir

                lbu $t0, 1($a0)
                li $t1, 60
                multu $t0, $t1
                mflo $t0
                mfhi $t2
                bgtz $t2, salir
                addu $v0, $v0, $t0

                lbu $t0, 0($a0)
                addu $v0,$v0,$t0

                jr $ra
				
				
inicializa_reloj_en_s:
                li $t0, 60
                divu $a1, $t0
                mfhi $t1
                sb $t1, 0($a0)

                mflo $t1
                divu $t1, $t0
                mfhi $t1
                sb $t1, 1($a0)

                mflo $t1
                sb $t1, 2($a0)

                jr $ra
                ########################################################## 
                # Subrutina que imprime los segundos calculados
                # Entrada: $a0 con los segundos a imprimir
                ########################################################## 

imprime_s:      move $t0, $a0
                la $a0, cad_asteriscos  # Dirección de la cadena
                li $v0, 4               # Código de print_string
                syscall


                la $a0, cad_reloj_en_s  # Dirección de la cadena
                li $v0, 4               # Código de print_string
                syscall

                move $a0, $t0           # Valor entero a imprimir
                li $v0, 1               # Código de print_int
                syscall

                la $a0, cad_asteriscos  # Dirección de la cadena
                li $v0, 4               # Código de print_string
                syscall
                jr $ra
 
devuelve_reloj_en_s_sd:
				lbu $t0, 2($a0)
				sll $v0, $t0, 11  		#2^11
				sll $t1, $t0, 10		#2^10
				addu $v0, $v0, $t1  
				sll $t1, $t0, 9			#2^9
				addu $v0, $v0, $t1
				sll $t1, $t0, 4			#2^4
				addu $v0, $v0, $t1
				
				lbu $t0, 1($a0)
				sll $t1, $t0, 5			#2^5
				addu $v0, $v0, $t1
				sll $t1, $t0, 4			#2^4
				addu $v0, $v0, $t1
				sll $t1, $t0, 3			#2^3
				addu $v0, $v0, $t1
				sll $t1, $t0, 2			#2^2 
				addu $v0, $v0, $t1
				
				lbu $t0, 0($a0)			#segundos
				addu $v0, $v0, $t0		#sumatotal
				
				jr $ra
				
devuelve_reloj_en_s_srd:
				lbu $t0, 2($a0)
				sll $v0, $t0, 12  		#2^12
				sll $t1, $t0, 9 		#2^9
				subu $v0, $v0, $t1  
				sll $t1, $t0, 5			#2^5
				addu $v0, $v0, $t1
				sll $t1, $t0, 4			#2^4
				subu $v0, $v0, $t1
				
				lbu $t0, 1($a0)
				sll $t1, $t0, 6			#2^6
				addu $v0, $v0, $t1
				sll $t1, $t0, 2			#2^2
				subu $v0, $v0, $t1

				
				lbu $t0, 0($a0)			#segundos
				addu $v0, $v0, $t0		#sumatotal
				
				jr $ra
				
 
                ########################################################## 
                # Subrutina que incrementa el reloj en una hora
                # Entrada: $a0 con la dirección del reloj
                # Salida: reloj incrementado en memoria
                # Nota: 23:MM:SS -> 00:MM:SS
                ########################################################## 
                
pasa_hora:      lbu $t0, 2($a0)         # $t0 = HH
                addiu $t0, $t0, 1       # $t0 = HH++
                li $t1, 24
                beq $t0, $t1, H24       # Si HH==24 se pone HH a cero
                sb $t0, 2($a0)          # Escribe HH++
                j fin_pasa_hora
H24:            sb $zero, 2($a0)        # Escribe HH a 0
fin_pasa_hora:  jr $ra


 
pasa_minuto:	lbu $t2, 1($a0)        
                addiu $t2, $t2, 1      
                li $t3, 60             
                beq $t2, $t3, M60    
                sb $t2, 1($a0)        
                j fin_pasa_minuto
M60:            sb $zero, 1($a0)       
                j pasa_hora
fin_pasa_minuto:
                jr $ra

pasa_segundo:	lbu $t0, 0($a0)        
                addiu $t0, $t0, 1
                li $t1, 60
                beq $t0, $t1, S60
                sb $t0, 0($a0)
                j fin_pasa_segundo
S60:            sb $zero, 0($a0)
fin_pasa_segundo:
                jr $ra

