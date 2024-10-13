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
print1:	add $4, $0, $11
	addi $2, $0, 1
	syscall 
print2: add $4, $0, $12
	addi $2, $0, 1
	syscall
print3: add $4, $0, $13
	addi $2, $0, 1
	syscall
fim:	addi $2, $0, 10
	syscall
