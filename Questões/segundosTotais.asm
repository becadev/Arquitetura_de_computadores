.text
main:	addi $2 $0 5
	syscall
	add $10 $0 $2		# Horas
	addi $2 $0 5
	syscall
	add $11 $0 $2		# Minutos
	addi $2 $0 5
	syscall
	add $12 $0 $2 		# Segundos
	
	addi $15, $0, 60	# 60 segundos
	addi $16, $0, 3600	# segundos em 60minutos
	
mult:	mul $4, $10, $16 	# H*3600
	mul $10, $11, $15 	# Min*60
	
soma:	add $4, $4,$10		# Min+h
	add $4,$4,$12		# (Min+h) + seg

print:	addi $2, $0, 1
	syscall
fim:	addi $2, $0, 10
	syscall
	
	
	
