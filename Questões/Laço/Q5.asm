.text
main:	addi $10 $0 10
	addi $9 $0 1
	
test:	beq $10 $0 ffor	# i > 0
	addi $2 $0 5
	syscall
	
	add $8 $8 $2
	sub $10 $10 $9	# decremento
	
	j test
ffor:	
	add $4 $0 $8
	addi $2 $0 1
	syscall
	
	addi $2 $0 10
	syscall
	