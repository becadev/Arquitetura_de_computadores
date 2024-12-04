.text
main:
	lui $8 0x1001
	ori $9 0x229a00 # cor
	lui $10 0x1001
	addi $20 $0 32
	
test: 	beq $20 $0 lados
	sw $9 0($8) 
	
	for:
		sw $9 1920($8) 
		addi $8 $8 4
	
	addi $20 $20 -1
	j test
lados:	
	addi $20 $0 32
	
	
test2:	beq $20 $0 fim

	sw $9 0($10) 
	addi $10 $8 124	# $8 está com o pc da linha anterior

	sw $9 0($8) 
	addi $8 $8 128
	
	addi $20 $20 -1
	j test2



fim:	addi $2 $0 10
	syscall
