# Faça um programa para ler dois números e informe qual deles é o maior.
.text
main:	addi $2 $0 5
	syscall
	add $8 $0 $2
	addi $2 $0 5
	
	syscall
	add $9 $0 $2
	
	slt $10 $8 $9 # Se ($8 < $9) $10 <- 1 senao $10 <- 0
	beq $10 $0 imp9 # Se for 0 imprimira o $9
	add $4 $0 $8
	j imp
	
imp9:	add $4 $0 $9

imp: 	addi $2 $0 1
	syscall
	
	addi $2 $0 10
	syscall
