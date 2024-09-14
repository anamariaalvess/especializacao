#Exercício 1: Criação e exploração de um data frame.
#Crie um data frame com as seguintes colunas: Nome, Idade, Cidade, Salario.
#Adicione pelo menos 5 linhas de dados.
#Exiba as primeiras linhas do data frame.
#Verifique a estrutura do data frame.

empregados <- data.frame(
  Nome <- c("Pedro", "Ana", "Lucas", "Catarina", "Tico", "Flávia"),
  Idade <- c(22, 29, 26, 6, 1, 24),
  Cidade <- c("Goiânia", "Londres", "Londres", "Rio de Janeiro", "Caraguatatuba", "Mistic Falls"),
  Salario <- c(4500.00, 50000.00, 100000.00, 2000.00,  1400.00, 60000.00)
)

colnames(empregados) <- c("Nome", "Idade", "Cidade", "Salario")
head(empregados)
head(empregados, 2)
str(empregados)

#Exercício 2: Seleção e filtragem de dados.
#Selecione apenas as colunas Nome e Salario do data frame.
#Filtre as linhas onde o Salario é maior que 4000.
empregados[c("Nome", "Salario")]
empregados[ empregados$Salario > 4000, ]

#Exercício 3: Adição e remoção de colunas. Adicione uma nova coluna Bonus que é 10% do Salario. Remova a coluna Cidade do 
#dataframe.

empregados <- subset(empregados, select = -Cidade)

empregados$Bonus <- empregados$Salario * 0.1

#Exercício 4: Ordenação de dados.Ordene o data frame pela coluna Salario em ordem decrescente.
#Ordene o data frame pela coluna Idade em ordem crescente.

empregados <- empregados[order(empregados$Idade), ] #ordem crescente
empregados <- empregados[order(empregados$Salario, decreasing = TRUE), ] #ordem decrescente

#Exercício 5: Agrupamento e resumo de dados. Crie um novo data frame com as colunas Departamento, Funcionario, Salario.
# Adicione pelo menos 6 linhas de dados, onde cada Departamento tenha pelo menos 2 funcionários.
#Calcule a média de Salario por Departamento.
departamentos <- data.frame(
  Departamento <- c("Comercial", "Administrativo", "Comercial", "Administrativo", "Comercial"),
  Funcionario <- c("Ana", "Lucas", "Flávia", "Catarina", "José"),
  Salario <- c(50000.00, 100000.00, 20000.00,  1400.00, 5000.00)
)

Comercial <- departamentos[ departamentos$Departamento == "Comercial", ]
Administrativo <- departamentos[ departamentos$Departamento == "Administrativo", ]

media_comercial <- sum(Comercial$Salario, na.rm = TRUE)/sum(!is.na(Comercial$Salario))
media_adm <- sum(Administrativo$Salario, na.rm = TRUE)/sum(!is.na(Administrativo$Salario))

#############################################################################################