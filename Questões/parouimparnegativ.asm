.text
main: 	addi $2, $0, 5
	syscall
	andi $12, $2, 1
	add $10, $0, -1
	mult $12, $10
	mflo $4
	addi $2, $0, 1 # imprime o resultado
      	syscall

# Se o número for o par o resultado será igual a 0 e se for ímpar o resultado será igual a -1.
# Numero de exemplo: 5
