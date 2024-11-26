.data
.text

main:
	lui $8 0x1001
	addi $9 $0 6
for:
	beq $9 $0 ffor
	
	addi $2 $0 5
	syscall
	
	sw $2 0($8)
	addi $8 $8 4
	
	addi $9 $9 -1
	j for
	
ffor:
	addi $9 $0 6
	addi $8 $0 0
for2:
	beq $9 $0 fim
	
	lw $4 0($8)
	addi $8 $8 4
	addi $9 $9 -1
	
	addi $2 $0 1
	syscall
	
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
	
	j for2
fim:
	addi $2 $0 10
	syscall
