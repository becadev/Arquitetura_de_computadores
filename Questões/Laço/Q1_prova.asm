``` asm

# Versao 1 com 3 colunas

.text

main:
	# NUMEROS DO PRIMEIRO BLOCO
	addi $8 $0 1
	addi $9 $0 2
	addi $10 $0 3
	addi $11 $0 4
	
	addi $15 $0 1	# incremento
	addi $16 $0 11	# condicao de parada do primeiro bloco
	addi $17 $0 10
	
primeiro_bloco:

	beq $15 $16 var_segundo_bloco
	
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
	mul $12 $8 $15
	
	slt $24 $15 $17	# 1 < 10
	beq $24 $0 espacinho1
	jal espaco
	j segunda_coluna

# SEGUNDA COLUNA
espacinho1:
	add $4 $0 ' '
	addi $2 $0 11
	syscall
segunda_coluna:
	
	
	add $4 $0 $9
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
	
	mul $12 $9 $15
	add $4 $0 $12
	addi $2 $0 1
	syscall
	
	mul $12 $9 $15
	slt $24 $15 $17	# 1 < 10
	beq $24 $0 espacinho2
	jal espaco
	j terceira_coluna
espacinho2:
	add $4 $0 ' '
	addi $2 $0 11
	syscall
terceira_coluna:
	add $4 $0 $10
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
	
	mul $12 $10 $15
	add $4 $0 $12
	addi $2 $0 1
	syscall
	mul $12 $10 $15
	
	addi $15 $15 1
	jal espaco
	
	
	 
	# addi $15 $15 1
	
pula_linha:	
	add $4 $0 '\n'
	addi $2 $0 11
	syscall
	
	j primeiro_bloco
	
	
#### SEGUNDO BLOCO

# NUMEROS DO SEGUNDO BLOCO
var_segundo_bloco:
	addi $8 $0 4
	addi $9 $0 5
	addi $10 $0 6
	
	addi $15 $0 1	# incremento
	addi $16 $0 11	# condicao de parada do primeiro bloco
	addi $17 $0 10
	
	add $4 $0 '\n'
	addi $2 $0 11
	syscall
	
segundo_bloco:

	beq $15 $16 var_terceiro_bloco
	
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
	mul $12 $8 $15
	
	slt $24 $15 $17	# 1 < 10
	beq $24 $0 espacinho3
	jal espaco
	j quarta_coluna

# SEGUNDA COLUNA
espacinho3:
	add $4 $0 ' '
	addi $2 $0 11
	syscall
quarta_coluna:
	
	
	add $4 $0 $9
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
	
	mul $12 $9 $15
	add $4 $0 $12
	addi $2 $0 1
	syscall
	
	mul $12 $9 $15
	slt $24 $15 $17	# 1 < 10
	beq $24 $0 espacinho4
	jal espaco
	j quinta_coluna
espacinho4:
	add $4 $0 ' '
	addi $2 $0 11
	syscall
quinta_coluna:
	add $4 $0 $10
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
	
	mul $12 $10 $15
	add $4 $0 $12
	addi $2 $0 1
	syscall
	mul $12 $10 $15
	
	addi $15 $15 1
	jal espaco
	
	
	 
	# addi $15 $15 1
	
	add $4 $0 '\n'
	addi $2 $0 11
	syscall
	
	j segundo_bloco
	
#### TERCEIRO BLOCO

# NUMEROS DO SEGUNDO BLOCO
var_terceiro_bloco:
	addi $8 $0 7
	addi $9 $0 8
	addi $10 $0 9
	
	addi $15 $0 1	# incremento
	addi $16 $0 11	# condicao de parada do primeiro bloco
	addi $17 $0 10
	
	add $4 $0 '\n'
	addi $2 $0 11
	syscall
	
terceiro_bloco:

	beq $15 $16 var_tabuada_dez
	
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
	mul $12 $8 $15
	
	slt $24 $15 $17	# 1 < 10
	beq $24 $0 espacinho5
	jal espaco
	j sexta_coluna

# SEGUNDA COLUNA
espacinho5:
	add $4 $0 ' '
	addi $2 $0 11
	syscall
sexta_coluna:
	
	
	add $4 $0 $9
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
	
	mul $12 $9 $15
	add $4 $0 $12
	addi $2 $0 1
	syscall
	
	mul $12 $9 $15
	slt $24 $15 $17	# 1 < 10
	beq $24 $0 espacinho6
	jal espaco
	j setima_coluna
espacinho6:
	add $4 $0 ' '
	addi $2 $0 11
	syscall
setima_coluna:
	add $4 $0 $10
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
	
	mul $12 $10 $15
	add $4 $0 $12
	addi $2 $0 1
	syscall
	mul $12 $10 $15
	
	addi $15 $15 1
	jal espaco
	
	
	 
	# addi $15 $15 1
	
	add $4 $0 '\n'
	addi $2 $0 11
	syscall
	
	j terceiro_bloco

var_tabuada_dez:
	add $4 $0 '\n'
	addi $2 $0 11
	syscall
	
	addi $10 $0 10
	addi $15 $0 1	# incremento
	addi $16 $0 11	# condicao de parada do primeiro bloco
tabuada_dez:
	beq $15 $16 ffor
	add $4 $0 $10
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
	
	mul $4 $10 $15
	addi $2 $0 1
	syscall
	
	add $4 $0 '\n'
	addi $2 $0 11
	syscall
	
	addi $15 $15 1
	j tabuada_dez

ffor:
	addi $2 $0 10
	syscall
	
#############################################################################


espaco:

	slt $24 $12 $17	# 1 < 10
	
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
