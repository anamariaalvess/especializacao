# Faça um script para
# Criar um vetor com 5 notas de um aluno (aleatórias entre 0 e 10).
# Calcule a média do aluno.
# Imprima as notas menores que a média.
# Imprima as notas maiores que a média.
# Imprima uma mensagem dizendo se o aluno foi aprovado (média >= 6).

notas <- c(runif(5, min = 0, max = 10))
is.vector(notas) # checking if is a vector
menor<- min(notas) # show the minimun value of a vector
maior<- max(notas) # show the maximum value of a vector
sum(notas) # show the sum of all elements of a vector
length(notas) # show the sixe
media <- sum(notas)/length(notas)
result <- NULL
if (media >= 6){
  result <- 'Aprovado'
}else{
  result <- 'Reprovado'
}
cat('A maior nota é:', maior, 'a menor nota é: ', menor, '\n', 
    'A média do aluno foi: ', media, 'e o aluno foi', result)
