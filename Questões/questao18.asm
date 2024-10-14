#Faça um programa que leia dois números e
#informe o menor deles (use apenas operações aritméticas e lógicas.

.text
main: addi $2, $0, 5 # servico para ler inteiros
      syscall
      add $8, $0, $2 #$8 contem o valor lido
     
      addi $2, $0, 5 # servico para ler inteiros
      syscall
      add $9, $0, $2 #$8 contem o valor lido
     
      sub $10, $8, $9 #y = a - b
      not $11, $10    # x = y negado bit a bit
     
      srl $12, $10, 31 # s = sinal(y)
      srl $13, $11, 31 # k = sinal(x)
     
      mul $14, $8, $12 # a * s
      mul $15, $9, $13 # b * k
     
      add $4, $14, $15
      addi $2, $0, 1
      syscall
     
      addi $2, $0, 10
      syscall
