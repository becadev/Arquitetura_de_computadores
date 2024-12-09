# Donkey kong
.text

main:	
	ori $15, $0, 0x4b280a # cor escura do macaco
	
	ori $16, $0, 0xc08457 # cor clara do macaco
	
	lui $8, 0x1001
	ori $17, $0, 0x8b0000 # vermelho escada
	addi $20 $0 32	      # contador para desenhar o chao
	
	lui $9, 0x1001	
	addi $21 $0 10	# contador para saber quando deve entrar parte das escadas
	addi $22 $0 5	# contador para as apoio da escada sei la vei
	addi $23 $0 4	# contador da primeira escada
	lui $10 0x1001	
	ori $18, $0, 0x99d9ea # azul escada
	
	
	
for_chao_vermelho:
	beq $20 $0 linhas_vermelhas
	sw $17  1792($8)
	addi $8 $8 4
	addi $20 $20 -1
	j for_chao_vermelho

linhas_vermelhas: 
		beq $22 $0 escadas
		sw $17 192($9)
		sw $17 832($9)
		sw $17 1000($9)
		addi $9 $9 4
		addi $22 $22 -1
		j linhas_vermelhas
	escadas:	
		beq $23 $0 fim
		sw $18 324($10)
		addi $10 $10 128 # diferença do 384-324
		addi $23 $23 -1
		j escadas
fim:
