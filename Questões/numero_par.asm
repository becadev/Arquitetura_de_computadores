.text
main: addi $8, $0, 5
      andi $4, $8, 1
      addi $2, $0, 1 # imprime o resultado
      syscall

# Se o número for o par o resultado será igual a 0 e se for ímpar o resultado será igual a 1.
