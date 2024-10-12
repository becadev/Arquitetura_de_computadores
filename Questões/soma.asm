.text
main: addi $2, $0, 5 # recebe o primeiro valor
      syscall
      add $8, $0, $2 # copia o primeiro valor que está no $2 e coloca no $8
      addi $2, $0, 5 # recebe o segundo valor
      syscall
soma: add $9, $2, $8 # realiza a soma e coloca no $9
      add $4, $0, $9 # move o resultado para oregistrador de destino($4) que será chamada pelo syscall 
      addi $2, $0, 1 # imprime o resultado da soma
      syscall
      addi $2, $0, 10 # finaliza o programa
fim:  syscall
