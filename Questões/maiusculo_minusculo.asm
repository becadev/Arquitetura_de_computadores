# Faça um programa que leia um caractere minúsculo e imprima o seu equivalente
# maiúsculo.
.text

main:	addi $2 $0 12
	syscall
	
	add $10 $0 $2 	# Letra minúscula
	addi $11 $0 32	# Diferença de um caractere maiúsuclo e minúsculo
	add $4 $10 $11
	
print:	addi $4 $0 '\n'	# Só para pular linha(Estética)
	addi $2 $0 11
	syscall

	add $4 $10 $11	# Letra maiúscula
	addi $2 $0 11
	syscall
	
	
fim: 	addi $2 $0 10
	syscall
