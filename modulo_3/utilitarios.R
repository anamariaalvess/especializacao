installed.packages()[, "Package"] # verificar todos os pacotes instalados
search() # Ver quais pacotes estão carregados
install.packages("ggplot2") # instala um pacote.
library(ggplot2) # carrega um pacote
ls("package:ggplot2") # lista as funções de um pacote
update.packages() # atualizar pacotes
packageVersion("ggplot2") # verificar a versão de um pacote

install.packages("hrbrthemes")
#########################################################
t2000 <- c(10,20,30)
t2001 <- c(11,21,29)
t2002 <- c(9,20,31)

dados <- matrix(c(t2000,t2001,t2002), nrow = 3, ncol = 3, byrow=FALSE)
colnames(dados) <- c("ano2000", "ano2001", "ano2002")
rownames(dados) <- c("Jun", "Jul", "Ago")

dados["Jun","ano2000"]
dados[0,] # Imprime os nomes das colunas
dados[,0] # Imprime os nomes das linhas

# Criando um dataframe
dados <- data.frame(
  c(10,20,30),
  c(11,21,29),
  c(9,20,31)
)

colnames(dados) <- c("ano2000", "ano2001", "ano2002")

row.names(dados) #Especifica os nomes das linhas do quadro de dados
row.names(dados) <- c("Jun", "Jul", "Ago")

dados
######################### Criando um quadro de dados ##############
nome <- c( "Maria", "Roberto", "Caio", "Margarida",
           "Elizete", "Pedro", "Jorge", "Helena")
idade <- c(27, 55, 34, 42, 20, 27, 34, 42)
sexo <- c("F", "M", "M", "F", "F", "M", "M", "F")
media <- c(3.26, 3.75, 2.98, 3.40, 2.75, 3.32, 3.68, 3.97)
estudante <- data.frame(nome, idade, sexo, media)
estudante

class(estudante)
typeof(estudante)
str(estudante)

# alterando dados
estudante[1, 2] <- "23"
estudante[1, "nome"] <- "Pedro"

attach(estudante)
idade

summary(estudante)

nchar( ) # número de caracteres do texto
toupper() # converte os caracteres para maiúsculo
tolower() # converte o texto para minúsculos
substr() # extrai partes específicas de um string.
grep() # busca um padrão em um vetor de strings, retornando a posição do vetor que tenha string e o padrão.
texto <- "Introdução à Linguagem R"
substr(texto, start=8, stop =9) <- "ca" # sobreposição de texto, não pode atribuir o texto maior do que a string é.
strsplit() # divide uma string em substrings com base em um separador especificado

# Na atividade avaliativa, os itens 6,7 e 8 apenas para Goiânia, outras questões para o dataframe inteiro.
