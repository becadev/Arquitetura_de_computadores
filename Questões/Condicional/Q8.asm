# Nao finalizada

.text 
main:

	addi $2 $0 5
	syscall
	add $8 $0 $2	# DIA
	
	addi $2 $0 5
	syscall
	add $9 $0 $2	# MES
	
	addi $2 $0 5
	syscall
	add $11 $0 $2	# ANO
	
	addi $20 $0 31	# Testando se dia é invalido
	slt $10 $20 $8	# if ($20 < $8) se sim $10 = 1
	bne $10 $0 invalido
	
	
	addi $20 $0 12	# Testando se mes é invalido
	slt $10 $20 $8	# if ($20 < $8) se sim $10 = 1
	beq $10 $0 invalido
	
	# Testando se ano é bissexto
	addi $10 $0 4
	div $11	$10
	mfhi $10
	beq $10 $0 ano_bissexto 
	j verifica_dia
	
ano_bissexto:
	addi $10 $0 2
	addi $14 $0 29
	slt $15 $14 $8	# if ($14 < $8) se nao $10 = 0
	bne $15 $0 invalido
	j valido
	
verifica_dia:
	addi $17 $0 8
	slt $15 $9 $17 	# If ($9 < $17) se mes maior que 7 $15 = 0
	beq $15 $0 mes_pos_julho
	addi $10 $0 2
	div $9 $10
	mfhi $10
	bne $10 $0 mes_30
	# se nao será mes 31
	addi $10 $0 31
	slt $10 $31 $8 	# se 31<dia $10 = 1
	bne $10 $0 invalido
	j valido
	
mes_pos_julho:
	addi $10 $0 2
	div $9 $10
	mfhi $10
	bne $10 $0 mes_30 # se o resto for diferente a zero então é impar, se for impar tem 30 dias, senao tem 31 e continua o fluxo
	addi $10 $0 31
	slt $10 $31 $8 	# se 30<dia $10 = 1
	beq $10 $0 invalido
	j valido

mes_30:	addi $10 $0 30
	slt $10 $31 $8 	# se 30<dia $10 = 1
	beq $10 $0 invalido
	j valido
	
valido:
	addi $4 $0 'V'
	addi $2 $0 11
	syscall
	
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	
	j main
	
invalido: 
	addi $4 $0 'X'
	addi $2 $0 11
	syscall
	
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	
	j main
fim:
	addi $2 $0 10
	syscall

	
