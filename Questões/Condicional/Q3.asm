#Escreva um programa para ler dois números inteiros e mostrar na tela o maior deles,
#bem como a diferença entre eles (a diferença é sempre um valor positivo)
.text
main:
	addi $2 $0 5
	syscall
	add $8 $0 $2
	
	addi $2 $0 5
	syscall
	add $9 $0 $2
	
	slt $10 $9 $8 # Se $9<$8, $10 = 1, senao $10 = 0
	beq $10 $0 maior	# se $9 for maior
	j dif	# se $8 for maior irá direto para a diferença
	
maior:	add $4 $0 $9
	addi $2 $0 1
	syscall
	
	addi $4 $0 '\n' 
	addi $2 $0 11
	syscall
	
	sub $10 $9 $8
	add $4 $0 $10
	
	addi $2 $0 1
	syscall
	
	j fim
	
dif:	add $4 $0 $8
	addi $2 $0 1
	syscall
	
	addi $4 $0 '\n' 
	addi $2 $0 11
	syscall
	
	sub $10 $8 $9
	add $4 $0 $10
	
	addi $2 $0 1
	syscall
	
fim: 	addi $2 $0 10
	syscall
	
