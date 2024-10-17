# Faça um programa que calcule uma média ponderada de três números inteiros, com
# pesos 3, 9 e 15, sem usar a operação de multiplicação.
.text
main:	addi $2 $0 5
	syscall
	add $10 $0 $2 # nota 1
	addi $2 $0 5
	syscall
	add $11 $0 $2 #nota 2
	addi $2 $0 5
	syscall
	add $12 $0 $2 # nota 3
sumpesos:	
	addi $20 $0 3
	addi $20 $20 9
	addi $20 $20 15
	
peso3:	sll $21 $10 1 # multiplicação nota 1
	add $21 $21 $10

peso9:	sll $22 $11 3
	add $22 $22 $11
	
peso15:	sll $23 $12 4
	sub $23 $23 $12
	
media:	add $24 $21 $22
	add $24 $24 $23
	div $24 $20
	mflo $4
	
print: 	addi $2 $0 1
	syscall

fim:   	addi $2 $0 10
	syscall
	
