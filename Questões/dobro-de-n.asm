.text
main: addi $2, $0, 5 # ler inteiro
      syscall 
      add $15, $0, $2 # adiciona o 2 ao $15
      mult $15, $2
      mflo $4 # coloca o resultado da multiplicação no $4
      addi $2, $0, 1 # realiza a impressão
      syscall 
      addi $2, $0, 10 # finaliza o programa
      syscall
