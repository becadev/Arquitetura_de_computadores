.text
main:	addi $2 $0 5
	syscall
	add $8 $0 $2 	# N1
	addi $2 $0 5
	syscall
	add $9 $0 $2	# N2
	

sub:sub $10 $8 $9	  # Y = N1 - N2
    not $11 $10	    # X = not(N1 - N2)
    srl $10 $10 31	  # bit de sinal caso n2 for maior (Bit de sinal de Y)
    srl $11 $11 31	  # bit sinal caso n1 for maior (Bit de sinal de X)
	
	
mult1:	mul $12 $8 $11	# a * Y

mult2:	mul $13 $9 $10	# b * x

soma:	add $14 $13 $12

print:	add $4 $0 $14
	addi $2 $0 1
	syscall
	
fim:	addi $2 $0 10
	syscall
	
