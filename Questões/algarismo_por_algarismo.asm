.text
main: 	addi $2, $0, 5
	syscall
	addi $10, $0, 10
numm1:	div $2, $10 
	mfhi $11 # primeiro algarismo
	mflo $14
num2:	div $14, $10
	mfhi $12  # segundo algarismo
	mflo $14
num3:	div $14, $10
	mfhi $13  # terceiro algarismo
	mflo $14
num4:	div $14, $10
	mfhi $14  # quarto algarismo
print1:	add $4, $0, $11
	addi $2, $0, 1
	syscall 
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
print2: add $4, $0, $12
	addi $2, $0, 1
	syscall
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
print3: add $4, $0, $13
	addi $2, $0, 1
	syscall
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
print4: add $4, $0, $14
	addi $2, $0, 1
	syscall 
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
fim:	addi $2, $0, 10
	syscall
