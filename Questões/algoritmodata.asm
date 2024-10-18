.text
main:	addi $10 $0 2025 # Ano em questão
	addi $9 $0 '/'

a:	addi $19 $0 19
	div $10 $19
	mfhi $11	# resto do ano / 19
	
b:	addi $16 $0 100
	div $12 $10 $16

c:	addi $17 $0 100
	div $10 $17
	mfhi $13	# resto do ano/100

d:	addi $8 $0 4
	div $14 $12 $8
e:	mfhi $15

f:	addi $8 $0 8
	add $16 $8 $12
	addi $8 $0 25
	div $16 $16 $8
	
g:	sub $17 $12 $16
	addi $17 $17 1
	addi $8 $0 3
	div $17 $17 $8

h:	addi $8 $0 19
	mul $18 $11 $8
	add $18 $18 $12
	sub $18 $18 $14
	sub $18 $18 $17
	addi $18 $18 15
	addi $8 $0 30
	div $18 $8
	mfhi $18
	
i:	addi $8 $0 4
	div $20 $13 $8
k:	mfhi $21

l:	addi $8 $0 2
	mul $22 $8 $15
	mul $23 $8 $20
	add $22 $22 $23
	addi $22 $22 32
	sub $22 $22 $18
	sub $22 $22 $21
	addi $8 $0 7
	div $22 $8
	mfhi $22
	
m:	addi $8 $0 11
	mul $23 $18 $8
	addi $8 $0 22
	mul $24 $8 $22
	add $23 $23 $24
	add $23 $23 $11
	addi $8 $0 451
	div $23 $23 $8
	
mes:	addi $8 $0 7
	mul $24 $8 $23	# 7 * m
	add $25 $18 $22	# h + l
	sub $24 $25 $24	# h + l - (7 * m) 
	addi $24 $24 144
	addi $8 $0 31
	div $24 $24 $8
	
	
dia:	mfhi $25
	addi $25 $25 2		# o algoritmo diz para somar 1, em python somar 1 
				# dá o resultado certo, em assembly não...
	
dia1:	addi $8 $0 10
	div $25 $8
	mflo $25
	mfhi $26
	
	add $4 $0 $25
	addi $2 $0 1
	syscall
	
	add $4 $0 $26
	addi $2 $0 1
	syscall
	
	add $4 $0 $9
	addi $2 $0 11
	syscall
	
	add $4 $0 $0
	addi $2 $0 1
	syscall
	
	add $4 $0 $24
	addi $2 $0 1
	syscall
	
	add $4 $0 $9
	addi $2 $0 11
	syscall
	
ano:	add $4 $0 $10
	addi $2 $0 1
	syscall
	
fim:	addi $2 $0 10
	syscall
	
	
