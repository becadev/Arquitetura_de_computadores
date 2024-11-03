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
	add $10 $0 $2
	
peso2:	sll $9 $9 1
peso3:	sll $11 $10 1
	add $10 $11 $10
	
soma:	add $10 $11 $10
	add $10 $9 $10
media:	addi $11 $0 6
	div $10 $10 $11
	
	addi $12 $0 60
	
if:	slt $8 $10 $12	# se $10 < $ 12, $8 = 1
	beq $8 $0 aprovado
	
reprovado:
	add $4 $0 $10
	addi $2 $0 1
	syscall
	
	addi $4 $0 '\n' 
	addi $2 $0 11
	syscall
	
	addi $4 $0 'R'
	addi $2 $0 11
	syscall
	j fim
	
aprovado:
	add $4 $0 $10
	addi $2 $0 1
	syscall
	
	addi $4 $0 '\n' 
	addi $2 $0 11
	syscall
	
	addi $4 $0 'A'
	addi $2 $0 11
	syscall
	
fim:	addi $2 $0 10
	syscall
