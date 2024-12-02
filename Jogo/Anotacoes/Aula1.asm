.text
main:
	lui $8 0x1001
	lui $9 0x00ff
	addi $20 $0 32
	
test: 	beq $20 $0 lateral
	sw $9 0($8) 
	addi $8 $8 4
	addi $20 $20 -1
	j test


lateral:
	sw $9 0($8) 
	addi $8 $8 4
	addi $
test1:	
	beq $
	addi $8 $8 4
	sw $9 120($8) 
	addi $8 $8 4
	addi $20 $20 -1
	j test1


fimlados:
	addi $2 $0 10
	syscall
