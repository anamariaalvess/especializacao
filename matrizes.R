m <- matrix(1:9, nrow =3, ncol =3)
dim(m) # mostra a dimensão da matriz
ncol(m) # mostra o número de colunas
nrow(m) # mostra o numero de linhas
t(m) # transpor matriz
n <- diag(3) #diag gera a matriz identidade
m1 = matrix(data = c(12, 20, 46, 38), ncol = 2)
m2 = matrix(data = c(22, 0, 6, 138), ncol = 2)
m1 + m2
m1 - m2
m1 * m2 # elemento a elemento
m1 / m2 #elemento a elemento
m1 %*% m2 # produto de duas matrizes
sum(m1) # soma tudo o que tem na matriz (usado em vetores tbm)
rowSums(m1) # é um vetor que soma as linhas da matriz
colSums(m1) # é um vetor que soma as colunas da matriz

v1 <- c("SP", "RJ", "MG")
v2 <-c("GO", "PE", "SC")
r <- rbind(v1,v2) # União por linhas
r2 <- cbind(v1,v2) # união por colunas
as.matrix # trata como matriz
as.vectot # trata como vetor
rownames() <-c() #nomear as linhas
colname() <- c() # nomear as colunas
wich.max() # obtem o máximo
wich.min() # obtem o minimo

#Criar uma matriz com 5 notas de 3 alunos (aleatórias entre 0 e 10).

a1 <- c(10, 7, 9,6, 5)
a2 <- c(9, 9, 9, 8, 7)
a3 <- c(1, 4, 3, 2,10)
notas <- rbind(a1, a2, a3)

# Atribua o nome dos alunos às linhas, e A1, A2, …, A5, para colunas.
nomes <- c("Pedro", "Maria", "José")
avaliacoes <- c("A1","A2","A3","A4","A5")

colnames(notas) <- avaliacoes
rownames(notas) <- nomes

# Calcule a média dos alunos.
media_alunos <- rowSums(notas) / ncol(notas)

# Calcule a média de cada avaliação.
media_avaliacoes <- round(colMeans(notas), 1)

# Encontre o aluno com maior média.
nomes[which.max(media_alunos)]

#Encontre a avaliação com menor média.
avaliacoes[which.min(media_avaliacoes)]

