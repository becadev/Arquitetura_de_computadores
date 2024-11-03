# Faça um programa que leia a idade (em anos) e o tempo de serviço de um trabalhador.
# Informe se ele pode se aposentar (imprima S se sim, e N se não). As condições para
# aposentadoria são: 1) ter, ao menos, 65 anos; OU 2) ter trabalhado 40 anos; OU ter
# pelo menos 60 anos e mais de 35 anos.
.text

main:
	addi $2 $0 5
	syscall
	add $8 $0 $2	# IDADE
	
	addi $2 $0 5
	syscall
	add $9 $0 $2	# TEMPO DE SERVIÇO
	
variaveis:

	addi $15 $0 65	# Tempo de idade minima para se aposentar
	addi $16 $0 40	# Tempo de trabalho
	addi $17 $0 39	
	addi $18 $0 35	# Tempo de trabalho caso tiver 60 anos
	
if: 	beq $15 $8 pode
	slt $10 $15 $8 	# se 65 < idade
	bne $10 $0 pode	# se verdade, $10 = 1
	# se mentira o teste continua
	beq $16 $9 pode	# se tempo de trabalho == 40, pode, senao continua
	
	slt $10 $17 $8	# se 60 < idade 
	slt $11 $18 $9	# se 35 < tempo
	and $10 $10 $11
	bne $10 $0 pode
	
naopode:
	addi $4 $0 'N'
	addi $2 $0 11
	syscall
	
	addi $4 $0 '\n' 
	addi $2 $0 11
	syscall
	
	
pode:	
	addi $4 $0 'S'
	addi $2 $0 11
	syscall
	
	addi $4 $0 '\n' 
	addi $2 $0 11
	syscall
	
fim:
	addi $2 $0 10
	syscall


	
	
