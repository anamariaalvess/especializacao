#1. Escreva um programa que leia um valor inteiro e diga se o número informado é par ou ímpar.
num <- as.integer(readline('informe um número inteiro: '))
if (num %% 2 == 0) {
  cat('O número informado é par.')
} else {
  cat('O número informado é impar.')
}

#2. Solicite 3 números e informe qual o maior entre eles.
num1 <- as.numeric(readline('Informe um número: '))
num2 <- as.numeric(readline('Informe outro número: '))
num3 <- as.numeric(readline('Informe mais um número: '))
compared <- num1
if ( num1 > num2) {
    compared <- num1
} else if ( num2 > num1) {
    compared <- num2
} else if (num3 > compared) {
    compared <- num3
} 
cat('O maior entre os três números informado é', compared)

#3. Leia dois números e indique se são iguais ou se são diferentes. Mostre o maior e o menor deles
num1 <- as.numeric(readline('Informe um número: '))
num2 <- as.numeric(readline('Informe outro número: '))
if(num1 != num2){
  cat('Os números informados são diferentes.')
  if (num1 > num2) {
      cat('O maior entre os números informados é:', num1, '\n', 'O menor entre os números informados é:', num2)
  } else{
      cat('O maior entre os números informados é:', num2, '\n', 'O menor entre os números informados é:', num1)
  }
} else {
    cat('Os números informados são iguais!')
}
#4. Crie um programa que leia um valor inteiro e diga se ele é positivo, negativo ou nulo.
num <- as.integer(readline('Informe um número inteiro: '))

if(num < 0){
cat('O número informado é negativo.')  
} else if(num == 0){
  cat('O número informado é nulo, isto é, igual a zero')
  
} else {
cat('O número informado é postivo.')
}
#5. Elabore um programa que leia dois números inteiros e efetue a adição dos mesmos. Caso o valor somado seja maior do que 20, 
#o resultado a ser apresentado será a soma mencionada adicionada de 8. Caso o valor somado seja menor ou igual a 20, deve-se
# subtrair 5 do mesmo para apresentá-lo em seguida.

num1 <- as.integer(readline('Informe um número inteiro: '))
num2 <- as.integer(readline('Informe outro númeo inteiro: '))
soma <- num1 + num2
if (soma > 20){
  soma <- soma +8
  cat('A soma dos números informados adicionado de 8 é: ', soma)
} else{
  soma <- soma - 5
  cat('A soma dos números informados subtraído de 5 é: ', soma)
}

#6. Faça um programa que leia um número do tipo float e imprima sua raiz quadrada caso o mesmo seja positivo ou nulo. Caso ele seja
#negativo, mostre o seu quadrado.
num <- as.numeric(readline('Informe um número: '))
if (num < 0){
  num <- num*num
  cat('O quadrado do número informado é: ', num)
} else{
  num <- sqrt(num)
  cat('A raíz quadrada do número informado é: ', num)
}

#7. Escreva um programa que leia um número inteiro e diga se ele é ou não um número divisível por 5.
num <- as.numeric(readline('Informe um número: '))
if (num %% 5 == 0){
  cat('O número informado é divisível por 5.')
} else{
  cat('O número informado não é divisível por 5.')
}
#8. Crie um programa para determinar se um número inteiro A é divisível por outro número B. Os valores devem ser fornecidos pelo usuário.
num1 <- as.integer(readline('Informe um número inteiro: '))
num2 <- as.integer(readline('Informe outro número inteiro: '))
if(num1 %% num2 ==0){
  cat('O número', num1, 'é divisível pelo número', num2)
}else{
  cat('O número', num1, 'não é divisível pelo número', num2)
}

#9. Escreva um programa que leia três valores inteiros distintos (assuma que o usuário digitará valores diferentes entre si) e os
# armazena nas variáveis A, B e C. Em seguida, descubra o menor valor e o armazene em uma variável denominada MENOR; o maior valor, 
# coloque-o na variável MAIOR e o valor intermediário, na variável INTER. Imprima os valores em ordem crescente, ou
# seja, imprima as variáveis MENOR, INTER e MAIOR, nessa ordem.
num1 <- as.integer(readline('Informe um número inteiro: '))
num2 <- as.integer(readline('Informe outro número inteiro diferente do número informado anteriormente: '))
num3 <- as.integer(readline('Informe mais um número inteiro diferente dos números informados anteriormente: '))
menor <- 0
maior <- 0
inter <- 0
if (num1 < num2 & num2 < num3){
  menor <- num1
  inter <- num2
  maior <- num3
  cat('Os números informados em ordem crescente é: ', num1, num2, num3)
} else if (num1 < num3 & num3 < num2){
  menor <- num1
  inter <- num3
  maior <- num2
  cat('Os números informados em ordem crescente é: ', num1, num3, num2)
} else if (num3 < num1 & num1 < num2) {
  menor <- num3
  inter <- num1
  maior <- num2
  cat('Os números informados em ordem crescente é: ', num3, num1, num2)
} else if (num3 < num2 & num2 < num1){
  menor <- num3
  inter <- num2
  maior <- num1
  cat('Os números informados em ordem crescente é: ', num3, num2, num1)
} else if (num2 < num3 & num3 < num1){
  menor <- num2
  inter <- num3
  maior <- num1
  cat('Os números informados em ordem crescente é: ', num2, num3, num1)
} else {
  menor <- num2
  inter <- num1
  maior <- num3
  cat('Os números informados em ordem crescente é: ', num2, num1, num3)
}

#10. Faça um programa que indique se um número inteiro informadopelo usuário está compreendido entre 20 e 90 ou não. (20 e 90
#não estão na faixa de valores).
num <- as.integer(readline('Informe um número inteiro: '))
if(20 < num & num < 90) {
  cat('O número informado pertence ao intervalo ]20,90[.')
} else{
  cat('O número informado não pertence ao intervalo ]20,90[.')
}

#11. Solicite o valor do salário, e valor da prestação. Calcular o percentual que a prestação representa do salário. Se a prestação
# for maior que 20% do salário, imprimir : Empréstimo não pode ser concedido. Senão imprimir Empréstimo pode ser concedido.
sal <- as.numeric(readline('Informe o valor do sálario: '))
pres <- as.numeric(readline('Informe o valor da prestação: '))
perc_sal <- 0.2*sal
if(pres > perc_sal){
  cat('O empréstimo não pode ser concedido.')
}else if (pres == perc_sal){
  cat('O empréstimo pode ser concedido')
}else{
  cat('O emprestimo pode ser concedido')
}

#12. Fazer um script para exibir a soma dos números de 0 a 100.
for( i in 0:100 ) {
  soma <- i+1
  cat(soma, '\n')
}

#13. Fazer um script para exibir a soma dos 100 primeiros números pares.
soma <- 0
for (i in 1:200) {
  if (i %% 2 == 0) {
    soma <- soma + i
    cat(i, "+")
  }
}  

#14. Solicitar o nome e três notas de um aluno. Considerando média 6 para aprovação, imprimir uma mensagem com o nome e a
#média obtida e dizendo se o aluno foi ou não aprovado.
nome <- as.character(readline('Informe o primeiro nome do Aluno: '))
nota1 <- as.numeric(readline('Informe a primeira nota do aluno: '))
nota2 <- as.numeric(readline('Informe a segunda nota do aluno: '))
nota3 <- as.numeric(readline('Informe a terceira nota do aluno: '))
media <- (nota1 + nota2 + nota3)/3
if(media >=6){
  cat('O(A) aluno(a)', nome, 'obteve média', media, 'e foi aprovado(a).')
}else {
  cat('O(A) aluno(a)', nome, 'obteve média', media, 'que é menor que 6 e foi reprovado(a).')
}

#15. Solicitar a idade de 5 pessoas e exibir a maior e menor idade, além da média das idades.
idade <- as.integer(readline(prompt = "Digite a idade da pessoa 1: "))
maior <- idade
menor <- idade
soma <- idade
for (i in 2:5) {
  idade <- as.integer(readline(prompt = paste("Digite a idade da pessoa", i, ":" )))
  
  if (idade > maior) {
    maior <- idade
  }
  if (idade < menor) {
    menor <- idade
  }
  
  soma <- soma+ idade
}

media <- soma/ 5
cat("A maior idade é:", maior, "\n")
cat("A menor idade é:", menor, "\n")
cat("A média das idades é:", media, "\n")

#16. Fazer um script exibir a tabuada de multiplicação de um número digitado pelo usuário.
num <- as.numeric(readline('Informe um número: '))

for(i in 0:10){
  result <- num*i
  cat(num, '*', i, '=', result, ' \n')
}

#17. Solicitar a idade e altura de 5 pessoas. Ao final, exibir qual a pessoa mais alta, a mais baixa, a mais nova e a mais velha.
idade <- as.integer(readline("Digite a idade da pessoa 1: "))
altura <- as.integer(readline('Digite a altura da pessoa 1 em cm: '))
maior_id <- idade
menor_id <- idade
maior_al <- altura
menor_al <- altura

for (i in 2:5) {
  idade <- as.integer(readline(prompt = paste("Digite a idade da pessoa", i, ":" )))
  altura <- as.integer(readline(prompt = paste("Digite a altura da pessoa", i, " em cm :" )))
  if (idade > maior_id) {
    maior_id <- idade
  }
  if (idade < menor_id) {
    menor_id <- idade
  }
  if(altura > maior_al){
    maior_al <- altura
  }
  if(altura < menor_al){
    menor_al <- altura
  }
}

cat("A maior idade é:", maior_id, "\n",
    "A menor idade é:", menor_id, "\n",
    "A maior altura é:", maior_al, "\n",
    "A menor altura é:", menor_al, "\n"
    )

#18. Fazer um script para gerar uma tabela com a conversão de graus Celsius para Fahrenheit, com valores variando de 1 em 1
#grau, de 0 a 100 graus Celsius. Utilize a fórmula fahrenheit = celsius * 1.8 + 32.

for (i in 0:100){
  fahr = i*1.8 +32
  cat(i, 'graus celsius equivale a ', fahr, 'graus fahrenheit.', '\n')
}

#19. Fazer um script solicitar dois números, e calcular e imprimir a potência, considerando o primeiro número como base e o
#segundo número como expoente.
base <- as.numeric(readline('Informe um número: '))
expo <- as.numeric(readline('Informe outro número: '))

resul <- base^expo
cat('A expoenciação entre os números informados é:', resul, 'cuja base é: ', base, 'e a potência é: ', expo)

#20. Escreva um programa que leia o valor da compra e imprima o valor da venda. Cuidado com valor inválido de compra!
valor <- as.numeric(readline('informe o valor da compra: '))
venda_final <- 0

if (valor <= 0 ){
  cat('O valor de compra informado é inválido!')
} else if ( valor < 10 ){
  venda_final <- valor*1.7
  cat('O valor dessa venda é', venda_final)
} else if (10 <= valor & valor < 30){
  venda_final <- valor*1.5
  cat('O valor dessa venda é', venda_final)
} else if ( 30 <= valor & valor < 50){
  venda_final <- valor*1.4
  cat('O valor dessa venda é', venda_final)
} else{
  venda_final <- valor*1.3
  cat('O valor dessa venda é', venda_final)
}

#21. Escreva um programa que leia o destino de um passageiro e se a viagem inclui retorno (ou seja, se é só ida, ou se é ida e volta).
#Informe o preço da passagem de acordo com a tabela a seguir:
destino <- as.integer(readline('Informe 1 para Região Norte. Informe 2 para Região Nordeste. Informe 3 para Região Centro-Oeste.  
                               Informe 4 para Região Sul. Informe 5 para for outro.'))

i_v <- as.integer(readline('Informe 1 se deseja passagem de ida e volta ou informe 2 se deseja passagem só de ida: '))

if(destino == 1){
  if(i_v == 1){
    cat('O valor da sua passagem é 900,00R$')
  }else {
    cat('O valor da sua passagem é 500,00R$')
  }
}else if(destino == 2){
  if(i_v == 1){
    cat('O valor da sua passagem é 650,00R$')
  }else {
    cat('O valor da sua passagem é 350,00R$')
  }
}else if(destino == 3){
  if(i_v == 1){
    cat('O valor da sua passagem é 600,00R$')
  }else {
    cat('O valor da sua passagem é 350,00R$')
  }
}else if(destino == 4){
  if(i_v == 1){
    cat('O valor da sua passagem é 550,00R$')
  }else {
    cat('O valor da sua passagem é 300,00R$')
  }
} else{
  cat('Não oferecemos serviços para outros destinos!')
}

#22. Construa um programa que receba a idade de uma pessoa e classifique-a seguindo o critério apresentado a seguir. Considere
#que a idade é um valor inteiro e que será informada de forma válida.
idade <- as.integer(readline('Informe a idade da pessoa: '))

if(0 < idade & idade <= 2){
  cat('A pessoa informada é um(a) recém nascido(a)!')
}else if(3 <= idade & idade <= 11){
  cat('A pessoa informada é uma criança!')
}else if(12<= idade & idade <= 19){
  cat('A pessoa informada é um(a) adolescente!')
}else if(20<= idade & idade <=55){
  cat('A pessoa informada é um adulto!')
}else{
  cat('A pessoa informada é um(a) idoso(a)!')
}

#23. Escrever um programa que leia o número de identificação, as 3 notas obtidas por um aluno nas 3 verificações e a média dos
# exercícios que fazem parte da avaliação. Calcular a média de aproveitamento do aluno, usando a fórmula e os conceitos:
id_aluno <- as.integer(readline('Informe o ID do aluno: '))
n1 <- as.integer(readline('Informe a nota 1 do aluno: '))
n2 <- as.integer(readline('Informe a nota 2 do aluno: '))
n3 <- as.integer(readline('Informe a nota 3 do aluno: '))
media_exe <- as.integer(readline('Informe a média dos exercícios  do aluno: '))
media_final <- (n1 + 2*n2 + 3*n3 + media_exe)/7
conceito <- NULL
if ( 9 <= media_final & media_final <= 10){
  conceito <- 'A'
  cat('O Aluno', id_aluno, 'obteve conceito', conceito)
} else if(7.5 <= media_final & media_final < 9){
  conceito <- 'B'
  cat('O Aluno', id_aluno, 'obteve conceito', conceito)
} else if( 6 <= media_final & media_final < 7.5){
  conceito <- 'C'
  cat('O Aluno', id_aluno, 'obteve conceito', conceito)
} else if(4 <= media_final & media_final < 6){
  conceito <- 'D'
  cat('O Aluno', id_aluno, 'obteve conceito', conceito)
} else{
  conceito <- 'E'
  cat('O Aluno', id_aluno, 'obteve conceito', conceito) 
}

#24. Criar um programa que leia a idade de uma pessoa e que mostre a sua classe eleitoral: - Não-eleitor (abaixo de 16 anos);
# - Eleitor obrigatório (entre 18 e 65 anos); #- Eleitor facultativo (entre 16 e 18 anos e maior de 65 anos).
idade <- as.integer(readline('Informe a idade da pessoa em valor inteiro: '))

if(idade > 0 & idade < 16){
  cat('A pessoa não pode votar!')
}else if(18 <= idade & idade < 65){
  cat('A pessoa é obrigada a votar!')
}else if(16 >= idade | idade < 18 | idade > 65 ){
  cat('A pessoa não é obrigada a votar, o voto é facultativo.')
}

#25. Escreva um programa que receba a idade, a altura e o peso de várias pessoas. Calcule e imprima:
# - a quantidade de pessoas com idade superior a 50 anos; a média das alturas das pessoas com idade entre 10 e 20 anos;
#- a porcentagem de pessoas com peso inferior a 40 quilos entre todas as pessoas analisadas.
#Considere que os dados informados são válidos. Pergunte ao usuário se ele deseja continuar digitando dados ou não
quantidade_mais_50 = 0
soma_altura_10_20 = 0
contador_10_20 = 0
contador_menos_40kg = 0
total_pessoas = 0

while(TRUE) {
  idade <- as.integer(readline(prompt="Digite a idade: "))
  altura <- as.numeric(readline(prompt="Digite a altura em metros: "))
  peso <- as.numeric(readline(prompt="Digite o peso em quilogramas: "))
  
  if (idade > 50) {
    quantidade_mais_50 <- quantidade_mais_50 + 1
  }
  
  if (idade >= 10 && idade <= 20) {
    soma_altura_10_20 <- soma_altura_10_20 + altura
    contador_10_20 <- contador_10_20 + 1
  }
  
  if (peso < 40) {
    contador_menos_40kg <- contador_menos_40kg + 1
  }
  
  total_pessoas <- total_pessoas + 1
  
  continuar <- readline(prompt="Deseja continuar? (s/n): ")
  if(tolower(continuar) != "s") {
    break
  }
}

media_altura_10_20 <- if(contador_10_20 > 0) soma_altura_10_20 / contador_10_20 else 0
porcentagem_menos_40kg <- if(total_pessoas > 0) (contador_menos_40kg / total_pessoas) * 100 else 0
cat("Quantidade de pessoas com mais de 50 anos:", quantidade_mais_50, "\n")
cat("Média das alturas das pessoas entre 10 e 20 anos:", media_altura_10_20, "\n")
cat("Porcentagem de pessoas com peso inferior a 40 kg:", porcentagem_menos_40kg, "%\n")

#28. Escreva um programa que receba vários números, calcule e mostre:
#a) a soma dos números digitados;
#b) a quantidade de números digitados;
#c) a média dos números digitados;
#d) o maior número digitado;
#e) o menor número digitado;
#f) a média dos números pares;
#g) a percentagem dos números ímpares entre todos os números digitados. Finalize a entrada de dados com a digitação do número 30.000.
contador <- 0
soma <- 0
par <- 0
cont_par <-0
impar_cont <- 0
maior <- 0
menor <- Inf
while(TRUE){
  num <- as.numeric(readline('Informe um número: '))
  contador <- contador + 1
  soma <- num + soma
  media <- soma/contador
  
  if(num %% 2 == 0){
    par <- num + par
    cont_par <- cont_par + 1
    media_par <- par/cont_par
  }
  if(num > maior){
    maior <- num
  }
  if(num < menor){
    menor <- num
  }
  
  if(num == 30000){
    break
  }
}

perc_impar <- (contador - cont_par)/contador*100
cat('A soma dos números digitados é:', soma, '\n',
    'a quantidade de números digitados é: ', contador, '\n',
    'a média dos números digitados é: ', media, '\n',
    'o maior número digitado é:', maior, '\n',
    'o menor número digitado é:', menor, '\n',
    'a média dos números pares é: ', media_par, '\n',
    'a percentagem dos números ímpares entre todos os números digitados é: ', perc_impar, '%.'
)

#27. Faça um programa que leia um número inteiro e informe se ele é primo.
numero <- as.integer(readline('Informe um número: '))
if (numero > 1) {
  e_primo <- TRUE  
  for (i in 2:(numero - 1)) {
    if (numero %% i == 0) {
      e_primo <- FALSE
      cat('esse é o primeiro divisor:', i, '\n')
      break 
    }
  }
  if (e_primo) {
    cat(numero, "é um número primo.\n")
  } else {
    cat(numero, "não é um número primo.\n")
  }
} else {
  cat("Números primos são maiores que 1.\n")
}

#28. Faça um programa que leia um número inteiro e calcule o seu fatorial.
num <- as.integer(readline('Informe um número inteiro: '))
fatorial<-1
contador <- 2
while(contador <= num) {
  fatorial <- fatorial * contador
  contador <- contador + 1
}
cat('O fatorial do número informado é', fatorial)




