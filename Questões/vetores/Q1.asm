.data
.word 1
.word 0
.word 5
.word -2
.word -5
.word 7
.text
main:
	lui $8 0x1001
	addi $9 $0 7
	
	addi $12 $0 1
	sw $12 0($8)
	add $11 $11 $12
	lw $12 4($8)
	add $11 $11 $12
	lw $12 20($8)
	
	add $11 $11 $12
	sw $11 24($8)

	addi $10 $0 100
	sw $10 16($8)
for:
	beq $9 $0 ffor
	lw $4 0($8)
	addi $2 $0 1
	syscall
	
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
	
	addi $8 $8 4
	addi $9 $9 -1
	j for
	
ffor:
	
