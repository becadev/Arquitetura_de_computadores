.text
main:	addi $2 $0 5
	syscall
	add $8 $0 $2
	addi $2 $0 5
	syscall
	add $9 $0 $2
	
	beq $8 $9 iguais
	
	# DIFERENTES
	addi $4 $0 '~'
	j imp # desvia para um rótulo independete de condicional
	
	
# Se iguais ele desviará o fluxo para cá
iguais:	addi $4 $0 '='

imp:	addi $2 $0 11
	syscall
	
	addi $2 $0 10
	syscall


VERSAO 2

.text
main:	addi $2 $0 5
	syscall
	add $8 $0 $2
	addi $2 $0 5
	
	syscall
	add $9 $0 $2
	
	beq $8 $9 iguais
	
	# DIFERENTES
	add $4 $0 $8
	j imp # desvia para um rótulo independete de condicional
	
# Se iguais ele desviará o fluxo para cá
iguais:	add $4 $0 $8
	addi $2 $0 1
	syscall
	
	addi $4 $0 '='
	addi $2 $0 11
	syscall
	
	add $4 $0 $8
	addi $2 $0 1
	syscall
	
	addi $2 $0 10
	syscall

imp:	addi $2 $0 1
	syscall
	
	addi $4 $0 '~'
	addi $2 $0 11
	syscall
	
	add $4 $0 $9
	addi $2 $0 1
	syscall
	
	addi $2 $0 10
	syscall
