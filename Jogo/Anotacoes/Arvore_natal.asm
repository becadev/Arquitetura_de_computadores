#Arvore natal
#Base da arvore 2*6-1
#N+2 lados
.text
main:
	lui $8 0x1001
	ori $9 0x00ff # Cor da arvore
	# lui $10 0x1001
	addi $21 $0 1024
	addi $23 $0 1022
	addi $24 $0 64
	addi $16 $0 4	# contador de bytes
	addi $25 $0 11  # contador pixel base
	addi $26 $0 0
	addi $27 $0 1
	# addi $8 $0 192

for_linha:
	beq $25 $26 base
	sw $9 192($8) 
	addi $27 $27 2
	
	for_ldos: beq $26 $27 ffim
		  sw $9 192($8) 
		  addi $8 $8 4
		  addi $26 $26 1
		j for_ldos
	ffim:		
	# para andar a linha e começa anterior ao atual
	mul $8 $8 $
	addi $8 $8 -4
	j for_linha
	
base:
	addi $2 $0 10
	syscall
	
	

	
	
	
	
	
