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
	addi $24 $0 3
	lui $10 0x1001	
	lui $11, 0x1001	
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
		beq $23 $0 escadas2_dados
		beq $23 $24 degrau
volta_degrau:	sw $18 324($10)
		addi $10 $10 128 # diferença do 384-324
		sw $18 332($11)
		addi $11 $11 128 # diferença do 384-324
		addi $23 $23 -1
		j escadas
degrau:
	addi $10 $10 4
	sw $18 324($10)
	addi $10 $10 -4
	j volta_degrau
	
escadas2_dados:	
	addi $23 $0 6	#contador da primeira escada
	addi $24 $0 5
	lui $12, 0x1001	
	lui $14, 0x1001	
	escadas2:
		beq $23 $0 kong
		beq $23 $24 degrau2
		beq $23 $24 degrau3
volta_degrau2:	sw $18 1132($12)
		addi $12 $12 128 
		sw $18 1140($14)
		addi $14 $14 128 # diferença do 384-324
		addi $23 $23 -1
		j escadas2
degrau2:
	addi $12 $12 4
	sw $18 1132($12)
	addi $12 $12 -4
	addi $24 $24 -2
	j volta_degrau2
degrau3:
	addi $12 $12 4
	sw $18 1132($12)
	addi $12 $12 -4
	j volta_degrau2

kong:	
	lui $19, 0x1001	# corpo do kong
	lui $20, 0x1001	# copía do kong
	lui $21, 0x1001
	lui $22, 0x1001	# parte clara
	addi $24 $0 5
	addi $25 $0 3
	addi $26 $0 4
	
	cabeca:beq $24 $0 parteclara1
		sw $15 784($19)
		sw $15 912($20)
		sw $15 1040($21)
				
		sw $15 2048($19)	# copia
		sw $15 2048($20)	# copia
		sw $15 2048($21)	# copia
	
		addi $19 $19 4
		addi $20 $20 4
		addi $21 $21 4
		addi $24 $24 -1
		j cabeca
	parteclara1:
		for1:	beq $25 $0 parteclara2
			sw $16 916($22)
			sw $15 2048($22)
			addi $22 $22 4
			addi $25 $25 -1
			j for1
	parteclara2:
			addi $22 $22 120
			sw $16 916($22)
			sw $16 2048($22)	
	tronco_dados:
		addi $21 $21 112
		addi $25 $0 3
		addi $26 $0 4
		addi $27 $0 2
		
	tronco:	beq $26 $0 parteclara_tronco
		addi $25 $0 3
		tronco_for:
			beq $25 $0 ffor
			sw $15 1040($21)
			sw $15 2048($22)
			addi $21 $21 4
			addi $25 $25 -1
			j tronco_for
		ffor:
			addi $26 $26 -1
			addi $21 $21 116
			j tronco
			
	parteclara_tronco:
			addi $25 $0 2
			
	for_parteclara:	
			beq $25 $0 bracos_dados1
			sw $16 1172($22)
			sw $16 2048($22)
			addi $22 $22 128
			addi $25 $25 -1
			j for_parteclara	
	bracos_dados1:	
		beq $27 $0 perna
		addi $23 $0 2
		addi $24 $0 2
	bracos1:
		beq $23 $0 fimfor_bracos1
		sw $15 780($22)
		sw $15 540($21)
		
		sw $16 2048($22)
		sw $16 2048($21)
		
		addi $22 $22 -4
		addi $21 $21 4
		addi $23 $23 -1
		j bracos1
		
	fimfor_bracos1:
		addi $27 $27 -1
		j bracos_dados1
		
	perna:
		sw $15 1024($21)
		sw $15 2048($22)
		sw $15 1032($21)
		sw $15 2048($22)
		addi $27 $27 24
		
movimento: # acho que eu errei bjs
	beq $27 $0 fim
	
	
	lw $9, 2048($19)
	lw $10, 2048($20)
	lw $11, 2048($21)
	lw $12, 2048($22)
	
	addi $19, $19, 4
	addi $20, $20, 4
	addi $21, $21, 4
	addi $22, $22, 4

	addi $27 $27 -1
	j movimento
fim:
