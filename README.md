## Arquitetura de computadores.

### Programação em Assembly
- Ferramenta:
  > MARS 4.5
- Obseravações:
  > Cada instrução ocupa 4 bytes, resultando em 32bits;
  > Registradores reservados para guardar variáveis: **$8** até **$25**, os demais possuem outros procedimentos.

## Código de Serviço:
> Uma chamada syscall é a forma de fazer com que o programador peça algo para o S.O (Sistema Operacional) que em seguida irá pedir algo ao usuário( Ex: digitar algo);
> O **$2** é reservado para realizar essa chamada.
``` asm
    Addi $2, $0, x       # x = código de serviço (Ex: Output, Imput...)
    syscall              # syscall = chamada ao S.O
