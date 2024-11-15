.text
main:
	addi $2 $0 5
	syscall
	add $10 $0 $2	 # valor de referencia
	
	addi $2 $0 5
	syscall
	add $11 $0 $2 	# quantidade de vezes
	addi $9 $0 1
	addi $8 $0 1
	
test:	beq $11 $0 ffor

	mul $4 $9 $10
	addi $9 $9 1
	addi $2 $0 1
	syscall
	
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
	
	sub $11 $11 $8
	j test
	
ffor:
	addi $2 $0 10
	syscall