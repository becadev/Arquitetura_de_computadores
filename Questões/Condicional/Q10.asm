.text
main:

	addi $2 $0 5
	syscall
	add $8 $0 $2
	
	addi $2 $0 5
	syscall
	add $9 $0 $2
	
	addi $2 $0 5
	syscall
	add $11 $0 $2
	
	addi $10 $0 3
	add $8 $8 $9
	add $8 $8 $11
	
	div $8 $10
	mflo $15
	addi $10 $0 10
	div $15 $10
	mflo $10
	addi $16 $0 5
	slt $10 $10 $16
	beq $10 $0 arredonda
	j media
	
arredonda:	
	addi $10 $0 1
	add $15 $15 $10
media: 
	add $4 $0 $15
	addi $2 $0 1
	syscall
	
fim: 	add $4 $0 $14
	addi $2 $0 10
	syscall
