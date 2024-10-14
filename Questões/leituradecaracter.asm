# de A para a
# A = 65       a = 97	diferença = 32

.text
main: 	addi $2, $0, 12		#serviço de leitura de caractere
	syscall
	add $8, $0, $2		
	
	addi $4,$7,$2
	addi $2,$0, -32
	addi $2, $0, 11
	syscall
	addi $2, $0, 10
	syscall
