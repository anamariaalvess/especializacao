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