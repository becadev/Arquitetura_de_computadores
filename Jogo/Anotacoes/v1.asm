#Arvore natal
#Base da arvore 2*6-1
#N+2 lados
.text
main:
	lui $8 0x1001
	ori $9 0x00ff # Cor da arvore
	# lui $10 0x1001
	
	addi $21 $0 1023 # "metade" da tela lateral
	addi $23 $0 1022 # "metade" da tela inferior
	addi $24 $0 64   # "metade" da tela superior
	
	addi $16 $0 4	# contador de bytes
	addi $25 $0 11  # contador pixel base
	addi $26 $0 0	# contador para o for que vai exibir bloco por bloco da linha
	addi $27 $0 1	# contador de blocos por linha na arvore 
	addi $8 $0 64
	sw $9 0($8) 
	
for_linha:
	beq $25 $26 base
	addi $27 $27 2
	addi $8 $8 -4
	
	for_ldos: beq $26 $27 ffim
		  sw $9 0($8) 
		  addi $8 $8 4
		  addi $10 $10 4
		  addi $26 $26 1
		j for_ldos
		
	ffim:		
		sub $8 $8 $10	
		
		# $64 = meio da arvore, para começar antes no proximo tem que subtrair 4
		# exemplo uma linha com *** começa do com $8 igual 60 e vai até 72, para a proxima
		# linha começar em 60-4, teria que subtrair primeiro os 12 que foram adicionado ao 60
	# para andar a linha e começa anterior ao atual
	
	sub $26 $26 $26	# zerando contador da arvore
	j for_linha
	
base:
	addi $2 $0 10
	syscall
	
