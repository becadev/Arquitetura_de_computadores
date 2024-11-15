.text
main:
	addi $2 $0 5
	syscall
	add $8 $0 $2 # valor lido pelo user
	
	
	
	addi $10 $0 2
	addi $11 $0 1
	beq $8 $11 ffor
	
	
	
test:	slt $12 $11 $8		# se $11 < $8, $12 = 1
	beq $12 $0 ffor
	
	addi $11 $11 1	# incremento
	div $11 $10 	# num % 2 
	mfhi $13	
	
	beq $13 $0 par
	j test
	
par :	add $4 $0 $11
	addi $2 $0 1
	syscall
	
	add $4 $0 ' '
	addi $2 $0 11
	syscall
	
	j test
	
ffor:	addi $2 $0 10
	syscall
	
	