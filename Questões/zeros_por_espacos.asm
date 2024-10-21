# Faça um programa que leia um número inteiro entre 0 e 9999 e imprima esse
# número com 4 caracteres, substituindo o algarismo 0 por espaço.
# Exemplo.: 304 gera uma saída 3 4

.text
main:	addi $2 $0 5
	syscall		# recebendo numero
	add $9 $0 $2
	
variaveis:
	addi $10 $0 10
	addi $20 $0 -1
	addi $21 $0 32
	addi $22 $0 16
	
separacao_de_algarismos:
	div $9 $10
	mflo $9
	mfhi $12
	
	div $9 $10
	mflo $9
	mfhi $13
	
	div $9 $10
	mflo $9
	mfhi $14
	
	div $9 $10
	mflo $9
	mfhi $15

tornando_negativo_para_saber_se_é_zero_ou_nao:
	mul $16 $12 $20
	mul $17 $13 $20
	mul $18 $14 $20
	mul $19 $15 $20

bit_sinal:

	srl $16 $16 31
	srl $17 $17 31
	srl $18 $18 31
	srl $19 $19 31

sinal_x_diferena_de_espaco:
	
	mul $19 $19 $22
	mul $18 $18 $22
	mul $17 $17 $22
	mul $16 $16 $22
	
soma_com_multiplicacao:
	
	addi $19 $19 32
	addi $18 $18 32
	addi $17 $17 32
	addi $16 $16 32

soma_do_algarismo_inicial:

	add $19 $19 $15
	add $18 $18 $14
	add $17 $17 $13
	add $16 $16 $12


print:	add $4 $0 $19
	addi $2 $0 11
	syscall
	
	add $4 $0 $18
	addi $2 $0 11
	syscall
	
	add $4 $0 $17
	addi $2 $0 11
	syscall
	
	add $4 $0 $16
	addi $2 $0 11
	syscall

fim:	addi $2 $0 10
	syscall
