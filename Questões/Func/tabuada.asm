# Versao 1 com 3 colunas

.text
main:
	# NUMEROS DO PRIMEIRO BLOCO
	addi $8 $0 1
	addi $9 $0 2
	addi $10 $0 3
	addi $11 $0 4
	
	addi $15 $0 1	# incremento
	addi $16 $0 10	# condicao de parada do primeiro bloco
	addi $17 $0 11
	j for
	
primeiro_bloco:

	addi $8 $0 1
	addi $15 $15 1
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	
for:	beq $15 $17 i
	
	add $4 $0 $8
	addi $2 $0 1
	syscall
	
	add $4 $0 'x'
	addi $2 $0 11
	syscall
	
	add $4 $0 $15
	addi $2 $0 1
	syscall
	
	add $4 $0 '='
	addi $2 $0 11
	syscall
	
	mul $12 $8 $15
	add $4 $0 $12
	addi $2 $0 1
	syscall

	beq $15 $16 espacinho1
	jal espaco
v:	
	addi $8 $8 1
	beq $11 $8 primeiro_bloco
	j for

espacinho1:
	add $4 $0 ' '
	addi $2 $0 11
	syscall
	j v
#############################################
i: 
	addi $15 $0 0
segundo_bloco:
	addi $8 $0 4
	addi $15 $15 1
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	addi $11 $0 7
	
for1:	beq $15 $17 k
	
	add $4 $0 $8
	addi $2 $0 1
	syscall
	
	add $4 $0 'x'
	addi $2 $0 11
	syscall
	
	add $4 $0 $15
	addi $2 $0 1
	syscall
	
	add $4 $0 '='
	addi $2 $0 11
	syscall
	
	mul $12 $8 $15
	add $4 $0 $12
	addi $2 $0 1
	syscall

	beq $15 $16 espacinho11
	jal espaco
v1:	
	addi $8 $8 1
	beq $11 $8 segundo_bloco
	j for1

espacinho11:
	add $4 $0 ' '
	addi $2 $0 11
	syscall
	j v1
#########################################
k: 
	addi $15 $0 0
terceiro_bloco:
	addi $8 $0 7
	addi $15 $15 1
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	addi $11 $0 10
	
for11:	beq $15 $17 fim_tabuada
	
	add $4 $0 $8
	addi $2 $0 1
	syscall
	
	add $4 $0 'x'
	addi $2 $0 11
	syscall
	
	add $4 $0 $15
	addi $2 $0 1
	syscall
	
	add $4 $0 '='
	addi $2 $0 11
	syscall
	
	mul $12 $8 $15
	add $4 $0 $12
	addi $2 $0 1
	syscall

	beq $15 $16 espacinho111
	jal espaco
v11:	
	addi $8 $8 1
	beq $11 $8 terceiro_bloco
	j for11

espacinho111:
	add $4 $0 ' '
	addi $2 $0 11
	syscall
	j v11
#########################################	
fim_tabuada:
	addi $8 $0 10
	addi $15 $0 1
	add $4 $0 '\n'
	addi $2 $0 11
	syscall
	
tabuada10:
	beq $15 $17 ffor
	
	add $4 $0 $8
	addi $2 $0 1
	syscall
	
	add $4 $0 'x'
	addi $2 $0 11
	syscall
	
	add $4 $0 $15
	addi $2 $0 1
	syscall
	
	add $4 $0 '='
	addi $2 $0 11
	syscall
	
	mul $12 $8 $15
	add $4 $0 $12
	addi $2 $0 1
	syscall
	
	addi $15 $15 1
	add $4 $0 '\n'
	addi $2 $0 11
	syscall
	j tabuada10

ffor:
	addi $2 $0 10
	syscall
	
#############################################################################
espaco:

	slt $24 $12 $16	# 1 < 10
	
	beq $24 $0 um_espaco
	add $4 $0 ' '
	addi $2 $0 11
	syscall
	add $4 $0 ' '
	addi $2 $0 11
	syscall
	add $4 $0 ' '
	addi $2 $0 11
	syscall
	jr $31	
um_espaco:
	add $4 $0 ' '
	addi $2 $0 11
	syscall	
	add $4 $0 ' '
	addi $2 $0 11
	syscall
	jr $31
