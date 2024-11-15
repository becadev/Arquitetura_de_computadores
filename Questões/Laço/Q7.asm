.text
main:

test:	addi $2 $0 5
	syscall
	add $8 $0 $2
	beq $8 $0 ffor
	
	slt $9 $8 $0
	bne $9 $0 test
	
	add $10 $10 $8
	
	j test
	
ffor:	
	add $4 $0 $10
	addi $2 $0 1
	syscall
	
	addi $2 $0 10
	syscall
	