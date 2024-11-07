.text

main:
	addi $2 $0 5
	syscall
	add $8 $0 $2	# A
	
	addi $2 $0 5
	syscall
	add $9 $0 $2	# B
	
	addi $2 $0 5
	syscall
	add $11 $0 $2	# C
	
	slt $15 $8 $9
	slt $16 $9 $11
	
	beq $15 $16 p
	addi $4 $0 'N'
	j fim
	
p:	
	addi $4 $0 'P'
	addi $2 $0 11
	syscall
	and $10 $15 $16
	beq $10 $0 negativo
	addi $4 $0 '+'
	j fim
	
negativo:	
	addi $4 $0 '-'

fim:	addi $2 $0 11
	syscall
	addi $2 $0 10
	syscall
