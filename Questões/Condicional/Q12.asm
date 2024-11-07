# Ta toda errada ainda

.text
main:

	addi $2 $0 5
	syscall
	add $8 $0 $2	# N1
	
	addi $2 $0 5
	syscall
	add $9 $0 $2	# N2
	

	addi $2 $0 5
	syscall
	add $11 $0 $2	# Faltas
	
	# variaveis
	addi $15 $0 5	# Media e soma de peso
	addi $10 $0 10	# perda de 10 pontos
	
	
	sll $8 $8 1
	sll $13 $9 1
	add $9 $13 $9
	add $8 $8 $9
	div $18 $8 $15	# media

	div $11 $11 $15
	
	
	# IMPRIMINDO MEDIA
	add $4 $0 $18
	addi $2 $0 1
	syscall
	
	mul $11 $10 $11	# penalidade
	
	sub $9 $9 $11	#media final
	
	
	add $4 $0 '\n'
	addi $2 $0 11
	syscall
	
	# IMPRIMINDO PENALIDADE
	add $4 $0 $11
	addi $2 $0 1
	syscall
	
	add $4 $0 '\n'
	addi $2 $0 11
	syscall
	
	# IMPRIMINDO MEDIA FINAL
	add $4 $0 $9
	addi $2 $0 1
	syscall
	
	addi $2 $0 10
	syscall
	
	
	
	
