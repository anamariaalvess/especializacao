# Lista 1 de Exercícios
# 1. Escreva um programa que imprima a mensagem "É preciso fazer todos os execícios para aprender!"
#Há duas formas de fazer:
print('É preciso fazer todos os execícios para aprender!')
cat("É preciso fazer todos os execícios para aprender!")

#2. Escreva um programa que imprima o produto entre 28 e 43.
#Solução:
cat('O produto entre 28 e 43 é:', 28*43)

#3. Escreva um programa que imprima a média aritmética entre os números 9,8 e 7.
#Solução
cat('A média aritmética entre os número 9, 8 e 7 é:', (9+8+7)/3)

#4. Saudações! Peça o usuário para inserir seu nome e exiba umsa saudação utilizando o nome fornecido
#Solução:
name <- readline('Infome o seu nome')
cat('Saudações!', '\n', 'Seja bem vindo(a)', name)

#5. Prevendo o futuro! Solicite ao usuário que insira sua idade e exiba uma mensagem indicando quantos anos ele terá daqui 10 anos.
#Solução
idade <- as.numeric(readline('Informe a sua idade em formato númerico: '))
idade_sum <- 10 + idade
cat('Daqui dez anos você terá', idade_sum, 'anos.')

#6. Escreva um programa para ler um número inteiro e imprimi-lo.
#Solução
number <- as.integer(readline('Informe um número: '))
cat('O número inteiro informado é', number)

#7. Escreva um programa para ler dois números inteiros e imprimi-los.
number1 <- as.integer(readline('Informe um número: '))
number2 <- as.integer(readline('Informe outro número: '))
cat('Os números inteiros informado são', number1, 'e', number2)

#8. Escreva um programa para ler um número inteiro e imprimir seu sucessor e antecessessor.
#Solução:
number <- as.integer(readline('Informe um número: '))
sucessor <- number + 1
antecessor <- number -1
cat('O número informado é', number, '\n', 'Seu antecessor é', antecessor, '\n', 'Seu sucessor é', sucessor )

#9. Escreva um programa para ler dois números inteiros e imprimir seu produto.
#Solução
number1 <- as.integer(readline('Informe um número: '))
number2 <- as.integer*readline('Informe outro número: '))
prod <- number1*number2
cat('O produto números informados são', prod)

#10. Escreva um programa para ler dois números inteiros e imprimir a soma. Antes do resultado deverá aparecer a mensagem: Soma
#Solução
number1 <- as.integer(readline('Informe um número'))
number2 <- as.integer(readline('Informe outro número'))
soma <- number1 + number2
cat('A soma números informados são', soma)

#11. Peça ao usuário que insira seu peso em kG e exiba-o convertido em libras. (1kg = 2,20462 libras)
#Solução
peso <- as.numeric(readline('Informe, numericamente, o seu peso em KG: '))
peso_lib <- peso*2.20462
cat('Seu peso em libras é', peso_lib, 'libras')

#12. Solicite a altura do usuário em metros e exiba-a convertida em centímetros.
#Solução
altura <- as.numeric(readline('Informe, em metros, qual é a sua altura: '))
conversao <- altura*(100)
cat('A sua altura convertida em centimetros é: ', conversao, 'cm')

#13. Escreva um programa para ler um número real e imprimir a terça parte deste número.
numero <- as.numeric(readline('Informe um número: '))
terca <- numero/3
cat('A terça parte do número informado é: ', terca)

#14. Escreva um programa que receba dois número inteiros e imprima a média aritmética com a mensagem "média" antes do resultado
num1 <- as.integer(readline('Informe um número: '))
num2 <- as.integer(readline('Informe outro número: '))
media <- (num1 + num2)/2
cat('A média artimética entre os dois número informados é: ', media)

#15. Escreva um programa que receba dois números inteiros e imprima a seguinte saída: -divisor; -resto.
num1 <- as.integer(readline('Informe um número: '))
num2 <- as.integer(readline('Informe outro número: '))
resto <- num1 %% num2
cat('O divisor entre os números informado é', num2, '\n', 'O resto da divisão entre os números informados é', resto)

#16. Escreva um programa que receba quatro números e imprima a média ponderada, sabendo-se que os pesos são 1, 2, 3 e 4.
num1 <- as.numeric(readline('Informe o primeiro número da média: '))
num2 <- as.numeric(readline('Informe o segundo número da média: '))
num3 <- as.numeric(readline('Informe o terceiro número da média: '))
num4 <- as.numeric(readline('Informe o quarto número da média: '))
media <- (1*num1 + 2*num2 + 3*num3 + 4*num4)/10
cat('A média ponderada, com peso 1, 2, 3 e 4, dos números informados é: ', media)

#17. Escreva um programa que receba um número e imprima a seguinte saída: - número - quadrado -raiz quadrada.
num <- as.numeric(readline('Informe um número '))
quadrado <- num*num
raiz <- sqrt(num)
cat('O número informado é:', num, '\n', 'O seu quadrado é:', quadrado, '\n', 'Sua raíz quadrada é:', raiz)

#18. Escreva um programa que receba o saldo de uma aplicação e imprima o novo saldo, considerando o reajuste 1%.
num <- as.numeric(readline('Informe o saldo atual da aplicação '))
reajuste <- num*1.01
cat('O saldo com reajuste de 1% é: ', reajuste)

#19. Escreva um programa que receba um número inteiro de 3 dígitos e imprima o algarismo das dezenas.
num <- as.integer(readline('Informe um número de 3 digitos'))
dezenas <- (num %% 100) %/% 10
cat('A dezena do número informado é', dezenas)

#20. Escreva um programa que receba uma data no formato ddmmaa, armazene-a em uma variável, e armazene-a em uma variável, e imprima 
#o dia, o mês e o ano separadamente. Além disso, imprima a data no formato mmddaa e a armazene em uma única variável, imprimindo-a.
data <- as.integer(readline('Informe uma data no formato ddmmaa '))
mes <- data %% 1000
ano <- mes %%100
mes <- (mes - ano)/100
dia <- (data - mes*100 - ano)/10000
data_invers <- (mes*10000 +dia*100 + ano)
cat('A data informada é: ', data, '\n', 'O dia é:', dia, '\n', 'O mês é', mes, '\n', 'O ano é', ano, '\n', 'A data no formato mmddaa é', data_invers)

#21. Escreva um programa que receba um número no formato CDU e o imprima invertido (UDC). O número deve ser armazenado em outra
#variável antes de ser impresso.
num <- as.integer(readline('Informe um número no formato CDU, exemplo 123. '))
dezena <- num %% 100
unidade <- dezena %% 10
dezena <- dezena - unidade
centena <- (num - dezena - unidade)/100
num_inve <- unidade*100 + dezena + centena
cat('O número no formato UDC é', num_inve)

#22. Sabendo-se que 100 quilowatts de energia custa um sétimo do salário mínimo, faça um programa que recaba o valor do salário 
# minímo e a quantidade de quilowatts gasto por residência, calcule e imprima:
# o valor, em reais, de cada quilowatt
# o valor, em reais, a ser pago
# o novo valor a ser pago por com desconto de 10%
salario <- as.numeric(readline('Informe o valor so salário mínimo atual: '))
consumo <- as.numeric(readline('Informe o consulmo de quilowatts da residência: '))
valor_kw <- salario*0.07
valor_pg <- consumo*valor_kw
valor_des <- valor_pg - valor_pg*0.01
cat('O valor do quilowatt é: ', valor_kw, '\n', 'O valor a ser pago é: ', valor_pg, '\n', 'O valor com 10% de desconto é: ', valor_des)

#23. O custo ao consumidor de um carro novo é a soma do custo de fábrica com a percentagem do distribuidor e dos impostos (aplicados 
# ao custo de fabrica). Supondo que a porceentagem do distribuidor seja de 12% do preço de fábrica e os impostos de 30% do preço de
# fábrica, faça um programa para ler o custo de fábrica de um carro e imprimir o custo ao consumidor.
custo_f <- as.numeric(readline('Informe o custo de fábrica do carro: '))
custo_d <- custo_f*0.12
custo_i <- custo_f*0.3
custo_t <- custo_f + custo_d + custo_i
cat('O custo total do carro informado é:', custo_t)

#24. escreva um programa que receba a base e a altura de um retângulo e imprima a seguinte saída:
# perímetro, área, diagonal.
base <- as.numeric(readline('Informe a base do retângulo:'))
altura <- as.numeric(readline('Informe a altura do retângulo:'))
perimetro <- base*2 + altura*2
area <- (base*altura)
diagonal <- sqrt(base^2 +altura^2)
cat('O perimetro do retangulo informado é:', perimetro, '\n', 'A área do retangulo é: ', area, '\n', 'A diagnonal é: ', diagonal)


#25. Escreva um programa que receba o raio de um círculo e imprima a seguinte saída:  perímetro e área.
raio <- as.numeric(readline('Informe o raio do círculo '))
area <- pi*(raio^2)
perimetro <- 2*pi*raio
cat('O perimetro o circulo é', perimetro, '\n', 'A área do circulo é', area)

#26. Escreva um programa que receba o lado de um quadrado e imprima: perimetro, área, diagonal.
lado <- as.numeric(readline('Informe o lado do quadrado: '))
perimetro <- lado*4
area <- lado^2
diagonal <- sqrt(2*lado^2)
cat('O perimetro do quadrado informado é:', perimetro, '\n', 'A área do quadrado é: ', area, '\n', 'A diagnonal do quadrado é: ', diagonal)

#27. Soma de dois números: peça ao usuário para inserir dois números e imprima a soma deles.
num1 <- as.numeric(readline('Informe um número: '))
num2 <- as.numeric(readline("Informe outro número: "))
soma <- num1 + num2
cat('A soma entre os números informados é:', soma)

#28. Peça ao usuário para inserir dois números e imprima a diferença deles.
num1 <- as.numeric(readline('Informe um número: '))
num2 <- as.numeric(readline("Informe outro número: "))
dif <- num1 - num2
cat('A soma entre os números informados é:', dif)

#29. Peça ao usuário para inserir dois números e imprima a multiplicação deles.
num1 <- as.numeric(readline('Informe um número: '))
num2 <- as.numeric(readline("Informe outro número: "))
prod <- num1*num2
cat('A soma entre os números informados é:', prod)

#30. Peça ao usuário para inserir dois números e imprima o resultado da divisão do primeiro pelo segundo.
num1 <- as.numeric(readline('Informe um número: '))
num2 <- as.numeric(readline("Informe outro número: "))
div <- num1/num2
cat('A soma entre os números informados é:', div)

#31. Peça ao usuário para inserir três números e imprima a média deles.
num1 <- as.numeric(readline('Informe um número: '))
num2 <- as.numeric(readline("Informe outro número: "))
num3 <- as.numeric(readline("Informe mais um número: "))
media <- (num1 + num2 + num3)/3
cat('A soma entre os números informados é:', media)

#32. Solicite uma temperatura em Celsius do usuário e converta-a para Fahrenheit (f = (c*9/5 + 32))
temp <- as.numeric(readline('Informe uma temperatura em celsius: '))
fahr <- temp*(9/5) + 32
cat('A temperatura em Fahrenheit é: ', fahr)

#33. Solicite uma temperatura em Fahrenheit para o usuário e a converta em celcius (c = (f-32)*(5/9))
temp <- as.numeric(readline('Informe uma temperatura em Fahrenheit: '))
cel <- ((temp - 32)*5)/9
cat('A temperatura em Celsius é: ', cel)

#34. Dados os pontos A e B, cujas coordenadas A(x1, y1) e B(x2, y2) serão informados via teclado, desenvolver um programa
# que calcule a distância entre A e B, onde:  d = sqrt((x2 - x1)^2 + (y2 - y1)^2)
x1 <- as.numeric(readline('Informe a coordenada x do ponto A: '))
y1 <- as.numeric(readline('Informe a coordenada y do ponto A: '))
x2 <- as.numeric(readline('Informe a coordenada x do ponto B: '))
y2 <- as.numeric(readline('Informe a coordenada y do ponto B: '))
dist <- sqrt((x2 - x1)^2 + (y2 - y1)^2)
cat('A distância entre os pontos A e B é:', dist)
