# Escreva uma função que gera um triângulo de altura e lados n e base 2 ∗ n − 1. Por
# exemplo, a saída para n = 6 seria:
# Triangulo arvore de natal
.text
main:
	addi $2 $0 5
	syscall
	add $8 $0 $2
	jal arvore
	
	addi $2 $0 10
	syscall
#################################################################
# Arvore: imprime a arvore de natal
# entrada : n
# triângulo de altura 
# lados n + 2
# base 2 ∗ n − 1.

arvore: 
	addi $5 $0 -1	# lado
	sll $6 $8 1
	addi $6 $6 -1	# base
	# altura $8
	addi $7 $0 0	# asteriscos por linha
	
	add $9 $0 $8	# quantidade de espaco
	addi $10 $0 0	# qtd espaco
	addi $11 $0 1	# iterator
	
for: 	beq $7 $8 ffor
	addi $5 $5 2
	
	addi $9 $9 -1
	beq $10 $0 espaco
	
	for2:	beq $3 $5 ffor2
		addi $3 $3 1
		
		addi $4 $0 '*'
		addi $2 $0 11
		syscall
		
		j for2
	ffor2:
		addi $4 $0 '\n'
		addi $2 $0 11
		syscall
	sub $3 $3 $3
	addi $7 $7 1
	j for
ffor:
	jr $31	
espaco:	
	beq $9 $10 ffor_espaco
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
	addi $10 $10 1
	j espaco
ffor_espaco: 
	sub $10 $10 $10
	j for2
		
