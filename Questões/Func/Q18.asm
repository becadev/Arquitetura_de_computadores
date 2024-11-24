.text
main:
	addi $2 $0 5
	syscall
	add $8 $0 $2
	
	jal floyd
	
	addi $2 $0 10 
	syscall
 ###############################################
 # Floyd : imprimi o triangulo de floyd
 # entrada: n
 # printa o triangulo
 # reg sujos:
 floyd:
 	addi $3 $0 0 	# contador de linhas
 	addi $5 $0 0 	# contador de numeros por linha
 	addi $6 $0 0	# numeros
 	
 for:	beq $3 $8 ffor
 	addi $3 $3 1
 	for2:	beq $5 $3 ffor2
 		addi $5 $5 1
 		addi $6 $6 1
 		
 		addi $4 $0 ' '
 		addi $2 $0 11
 		syscall
 		
 		add $4 $0 $6
 		addi $2 $0 1
 		syscall
 		j for2
 	ffor2:
 		addi $4 $0 '\n'
 		addi $2 $0 11
 		syscall
 	sub $5 $5 $5
 	j for
 ffor:
 	jr $31
 		
 	
