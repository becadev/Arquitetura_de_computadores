.text
main:
	lui $8 0x1001
	addi $9 $0 512 		# 512 iterações
	ori $5 $0 0xffff	# ele vai de 0 até 0xffff
	sll $5 $5 8		# o dolar 5 está sendo usado para indicar para o syscall 42 que será "variado"
	
for1:	beq $9 $0 fimScr
	addi $2 $0 42		# chamada que irá gerar numeros aleatorios de 42 até
	syscall			# essa syscall gerar um umero aleatori no $4
	sw $4 0($8)		# adicionando ao $4 para printar
	sw $4 2048($8)		# fazendo a copia, irá realizar o endereço atual + 2048
	addi $8 $8 4		# para ir pro proximo endereço
	addi $9 $9 -1
	j for1
fimScr:
	lui $8 0x1001
	ori $20 0xffffff 	# ponto branco
	addi $10 $0 50		# iterator para laço
	
for2:	beq $10 $0 fim

	sw $20 0($8)		# ponto branco
	sw $20 4($8)		# adicionando o ponto branco no vizinho para gerar uma ilusao mais fluida
	
	lw $9 2048($8)		# recuperando a cor original que foi modificada pelo ponto branco
	addi $8 $8 4
	jal timer
	
	addi $10 $10 -1	
	j for2
	
fim:	addi $2 $0 10

############################################################
# Função Timer: vai fazer vários nadas muitas vezes

timer:	sw $16 0($29)	# colocando na pilha o $16
	addi $29 $29 -4
	addi $16 $0 10000
	
# esse laço faz nada só consumir tempo
forT:	beq $16 $0 fimT
	nop
	nop
	nop
	addi $16 $16 -1
	j forT

fimT:	addi $29 $29 4
	lw $16 0($29)
	jr $31
	
	
