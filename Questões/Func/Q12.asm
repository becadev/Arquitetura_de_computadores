.text
main:
	addi $2 $0 5
	syscall
	add $8 $0 $2
	jal triangulo
	
	addi $2 $0 10
	syscall
	
#################################################
# Função Triangulo
# entrada: n
# um triângulo lateral de altura 2 ? n ? 1 e n largura.
# rg sujos: 
# $5 --> altura do triangulo
# $6 --> incremento 1
# $7 --> incremento 2
# $3 --> decremento
triangulo:
	addi $5 $0 2
	mul $5 $8 $5
	addi $5 $5 -1	# altura
	addi $6 $0 1
	addi $7 $0 0
	add $9 $0 $8
	addi $8 $8 1
	
	
for:	beq $6 $8 decremento
	
	for2:	beq $7 $6 ffor2
		addi $4 $0 '*'
		addi $2 $0 11
		syscall
		addi $7 $7 1
		j for2
	ffor2:
		addi $4 $0 '\n'
		addi $2 $0 11
		syscall
	add $7 $0 $0
	addi $6 $6 1
	j for
	
decremento:
	beq $9 $0 ffor
	addi $9 $9 -1
	addi $3 $0 0
	for_decremento:  beq $3 $9 ffor_decremento
			 addi $4 $0 '*'
			 addi $2 $0 11
			 syscall
			 addi $3 $3 1
			 j for_decremento
	ffor_decremento:
			addi $4 $0 '\n'
			addi $2 $0 11
			syscall
	j decremento
ffor:
	jr $31
