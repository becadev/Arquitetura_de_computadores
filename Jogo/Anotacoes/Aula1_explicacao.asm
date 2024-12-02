.text
main:
	# ori $9 0X00ff	azul
	lui $8 0x1001
	lui $9 0x00ff
	sw $9 0($8)
	srl $9 $9 8
	sw $9 4($8)
	
	srl $9 $9 8
	sw $9 8($8)
	
	
	
