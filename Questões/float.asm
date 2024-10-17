# Faça um programa que leia dois números inteiros e calcule e imprima a média
# aritmética simples desses dois números apresentando o resultado com um algarismo
# na casa fracionária.
# Ex.: 13 e 6 gera uma saída 9,5

.text
main:	addi $2 $0 5
	syscall
	add $10 $0 $2 # numero 1
	addi $2 $0 5
	syscall
	add $12 $0 $2 # numero 2
	
soma: 	add $12 $12 $10

div:	addi $11 $0 2		# registrador para salvar o dois que irá dividir a soma
	div $12 $11
	mflo $15		# parte inteira
	mfhi $16		# resto da divisão
	
resto:	addi $20 $0 10 		# o dez irá multiplicar o resto
	mul $20 $20 $16 	# multiplicação do resto por 10
	div $20 $20 $11		# divisao do resto por dois
	
printint:	add $4 $0 $15	
		addi $2 $0 1
		syscall
		
printchar:	addi $4 $0 ','
		addi $2 $0 11
		syscall
		
printdec:	add $4 $0 $20
		addi $2 $0 1
		syscall
		
fim:		addi $2 $0 10
		syscall
