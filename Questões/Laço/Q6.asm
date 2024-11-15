.text
main:
	addi $10 $0 0
	
test:	addi $2 $0 5
	syscall
	
	slt $11 $2 $0	# se $10 < 0, $11 = 1
	bne $11 $0 ffor # $11 = 1, $10<0
	add $12 $0 $2
	
	add $10 $10 $12	# soma
	
	j test
	
ffor:	add $4 $0 $10
	addi $2 $0 1
	syscall