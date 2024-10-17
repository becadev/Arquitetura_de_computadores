.text
main:	addi $10 $0 2024 # Ano em questão
	addi $9 $0 '/'

a:	addi $19 $0 19
	div $10 $19
	mfhi $13	# resto do ano / 19
	
b:	addi $16 $0 100
	div $16 $10 $16

c:	addi $17 $0 100
	div $10 $17
	mfhi $17	# resto do ano/100

d:	addi $18 $0 4
	div $15 $16 $18
	
e:	div $16 $18
	mfhi $18
	
f:	addi $14 $16 8
	addi $12 $0 25
	div $14 $14 $12
	
g:	sub $12 $16 $14
	addi $12 $12 1
	addi $11 $0 3
	div $12 $12 $11
	
h:	mul $11 $19 $13
	add $11 $11 $16
	sub $11 $11 $15
	sub $11 $11 $12
	addi $11 $11 15
	
	div $11 $8
	mfhi $11
	
i:	addi $19 $0 4
	div $20 $17 $19
	
k:	div $17 $19
	mfhi $21
	
l:	addi $19 $0 2
	mul $22 $18 $19
	mul $23 $19 $20
	add $22 $22 $23
	addi $22 $22 32
	sub $22 $22 $11
	sub $22 $22 $21
	addi $19 $0 7
	div $22 $19
	mfhi $22

m:	addi $19 $0 11
	mul  $24 $19 $11
	
	addi $19 $0 22
	mul $25 $19 $22
	
	add $24 $24 $25
	add $24 $24 $13
	
	addi $25 $0 451
	div $24 $24 $25
	
mes : 	addi $10 $0 7
	mul $20 $10 $24
	add $15 $22 $11
	sub $15 $15 $20
	
	addi $15 $15 144
	addi $17 $0 31
	
	div $20 $15 $17
	addi $18 $0 10
	div $20 $18
	mflo $20
	mfhi $18

dia: 	mul $10 $10 $24
	add $12 $11 $22
	sub $12 $12 $10
	addi $12 $12 144
	div $12 $17
	mflo $25
	
