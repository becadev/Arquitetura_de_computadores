.text
main:  lui $8, 0x1001
       addi $9, $0, 512
       ori $5, $0, 0xffff  # $5 <= 0x0000ffff
       sll $5, $5, 8       # $5 <= 0x00ffff00
       
for1:  beq $9, $0, fimScr

       
       addi $2, $0, 42
       syscall
       sw $4, 0($8)
       sw $4, 2048($8)
       
       addi $8, $8, 4

       addi $9, $9, -1
       j for1
fimScr:

      lui $8, 0x1001
      ori $20, 0xffffff
      lui $21 0xffff	# $21 = vai conter o valor 0xffff0000
      addi $25 $0 ' '
      addi $10 $0 4 # cont paara andar endereços
      addi $11 $0 'a'
      addi $12 $0 'd'
      addi $13 $0 's'
      addi $14 $0 'w'
      
for2: # laço infinito
     
      sw $20, 0($8)
      jal timer	
      sw $20, 4($8)
      lw $9, 2048($8)
      sw $9, 0($8)
      add $8, $8, $10
      
      lw $22 0($21)	# leitura do que está no $21
      beq $22 $0 cont	# se ele digitou algo ele irá para o fim
      lw $23 4($21)
      beq $23 $25 fim	# se ele apertar no espaço o jogo acaba
      beq $23 $11 esq
      beq $23 $12 dir
      beq $23 $13 up
      beq $23 $14 donw
      j cont
      
esq:  addi $10 $0 -4
      j cont
dir:  addi $10 $0 +4
      j cont
up:   addi $10 $0 -4
      j cont
donw: addi $10 $0 +4
      
cont: j for2
fim:  addi $2, $0, 10
      syscall    
#====================================================================
# função Timer

timer: sw $16, 0($29)
       addi $29, $29, -4
       addi $16, $0, 100000
forT:  beq $16, $0, fimT
       nop
       nop
       addi $16, $16, -1      
       j forT                  
fimT:  addi $29, $29, 4                                                    
       lw $16, 0($29)          
       jr $31
