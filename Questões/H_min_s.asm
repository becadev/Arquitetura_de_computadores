.text
main:	addi $2 $0 5
	syscall
	add $10 $0 $2		# Recebe segundos totais
	addi $20, $0, ':'	# Guarda a String ":" 

	addi $11 $0, 3600
	addi $12, $0, 60


horas:	div $10, $11
	mfhi $10
	mflo $15 	# Horas
	
min:	div $10, $12
	mfhi $10	# Segundos
	mflo $16	# Minutos
	
print1: add $4, $0, $15
	addi $2, $0, 1
	syscall
	add $4, $0, $20
	addi $2, $0, 11
	syscall		# H:
	
print2: add $4, $0, $16
	addi $2, $0, 1
	syscall
	add $4, $0, $20
	addi $2, $0, 11
	syscall		# H:Min:

print3: add $4, $0, $10
	addi $2, $0, 1
	syscall		# H:Min:Seg

fim:	addi $2, $0, 10
	syscall
