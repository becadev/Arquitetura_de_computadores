#Faça um programa que receba três notas (entre 0 e 100) e calcule a média ponderada
#dessas notas com pesos 1, 2 e 3. Informe a média e se o aluno foi aprovado, escreva
#após a média o a letra A. Caso o aluno seja reprovado, informe, após a média, a letra R.
#A média para aprovação é 60.

.text 
main:

	addi $2 $0 5
	syscall
	add $8 $0 $2
	
	addi $2 $0 5
	syscall
	add $9 $0 $2
	
	beq $9 $8 iguais
	slt $10 $9 $8 	# if $9<$8 $10 = 1
	beq $10 $0 num2_menor
	
	add $4 $0 $9
	addi $2 $0 1
	syscall
	
	addi $4 $0 '<'
	addi $2 $0 11
	syscall
	
	add $4 $0 $8
	addi $2 $0 1
	syscall
	
	j fim
	
num2_menor:
	add $4 $0 $9
	addi $2 $0 1
	syscall
	
	addi $4 $0 '>'
	addi $2 $0 11
	syscall
	
	add $4 $0 $8
	addi $2 $0 1
	syscall
	
	j fim
	
iguais:	
	add $4 $0 $9
	addi $2 $0 1
	syscall
	
	addi $4 $0 '='
	addi $2 $0 11
	syscall
	
	add $4 $0 $8
	addi $2 $0 1
	syscall
	
fim:	addi $2 $0 10
	syscall
