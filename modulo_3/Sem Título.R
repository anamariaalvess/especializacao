#Exercício 1)
pessoas <- data.frame(
  
  Nome = c("Joao", "Pedro", "Carolina", "Maria", "Manoel"),
  Idade = c(12, 34, 11, 76, 43),
  Cidade = c("Goiania", "Goiania", "Anápolis", "Rio Verde", "Lisboa"),
  Salario = c(3000, 5000, 1200, 8000, 40000)
)
pessoas

head(pessoas)
head(pessoas, 2)
str(pessoas)

#Exercício 2

pessoas[pessoas$Salario > 4000, c("Nome", "Salario")]

#ou

subset(pessoas, Salario > 4000)[c("Nome", "Salario")]

#Exercício 3

pessoas$Bonus <- pessoas$Salario * 0.1
pessoas$Cidade <- NULL

#AULA 2

#Exercício 1

numeros <- c(1, 4, 7, 12, 16)

estado_civil <- c("casado", "solteiro", 
                  "solteiro", "divorciado", 
                  "casado")

df <- data.frame(numeros, estado_civil)

minha_lista <- list(numeros, estado_civil, df)

minha_lista <- list(numeros=numeros, estado_civil=estado_civil, data_frame=df)

minha_lista$numeros
minha_lista$data_frame

#Exercício 2

vlog <- c(TRUE, FALSE, FALSE, TRUE, TRUE, TRUE)
#FORMA 1: minha_lista <- append(minha_lista, vlog)
#FORMA 2: minha_lista[4] <- vlog
#FORMA 3: minha_lista["vlog"] <- vlog
#FORMA 4: minha_lista$vlog <- vlog

minha_lista$vlog <- vlog

minha_lista$estado_civil <- NULL

#Exercício 3

cores <- c("vermelho", "azul", "verde", "vermelho", "azul")
fatores <- factor(cores)
print(levels(fatores))
table(fatores)

#Exercício 4

levels(fatores) <- c("Red", "Blue", "Green")
print(fatores)