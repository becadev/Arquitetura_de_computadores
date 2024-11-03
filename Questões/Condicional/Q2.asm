# Faça um programa que leia um ano e informe se esse ano é bissexto.
.text
main:

	addi $2 $0 5
	syscall
	add $8 $0 $2
	
	addi $10 $0 366
	
	beq $10 $8 sim
	addi $4 $0 'N'
	j imp
	
sim:	addi $4 $0 'S'
imp:	addi $2 $0 11
	syscall
	addi $2 $0 10
	syscall
