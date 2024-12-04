.text
main:
	lui $8 0x1001 		# linha 1
	ori $9 0x229a00		# cor da arvore
	ori $10 0xff6ec7	# bolas de natal
	ori $14 0xff6ec7	# bolas de natal
	ori $15 0xFF0000	# bolas de natal
	
	addi $17 $0 2
	addi $8 $8 316
	
	lui $10 0x1001	# linha 2
	addi $20 $0 3
	addi $10 $10 440
	
	lui $11 0x1001	# linha 3
	addi $21 $0 5
	addi $11 $11 564
	
	
	lui $12 0x1001	# linha 4
	addi $22 $0 7
	addi $18 $0 6
	addi $12 $12 688
	
	
	lui $13 0x1001	# linha 5
	addi $23 $0 9
	addi $13 $13 812
	
	sw $9 0($8)	# exibindo linha 1
	
for2: 	beq $20 $0 for3
	beq $20 $17 bola1
	sw $9 0($10)
	
cont2:	addi $10 $10 4
	addi $20 $20 -1
	j for2
	
bola1:	
	sw $10 0($10)
	j cont2
	
for3:	beq $21 $0 for4
	sw $9 0($11)
	
	addi $11 $11 4
	addi $21 $21 -1
	j for2

	
for4:	beq $22 $0 for5
	beq $22 $18 bola3
	beq $22 $17 bola2
	sw $9 0($12)
	
cont4:	addi $12 $12 4
	addi $22 $22 -1
	j for2
bola2:	
	sw $15 0($12)
	j cont4
bola3:	
	sw $10 0($12)
	j cont4
	
for5:	beq $23 $0 base
	sw $9 0($13)
	addi $13 $13 4
	addi $23 $23 -1
	j for2

base:	lui $14 0x1001
	addi $14 $14 956
	ori $16 0x663333
	sw $16 0($14)

	
	
	
	
	

	
