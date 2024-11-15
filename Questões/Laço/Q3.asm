.text
main:	
	addi $10 $0 0
	addi $12 $0 10
	
test:	beq $10 $12 ffor
	addi $10 $10 1
	
	add $4 $0 $10
	addi $2 $0 1
	syscall 
	
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall 
	
	j test

ffor:	addi $2 $0 10
	syscall