df <- mtcars # carrega um dataframe do R

mtcars$mpg # $ pra filtrar dados de uma coluna do dataframe


class(mtcars) #mostrar a classe do objeto

dim(mtcars) #dimensão do dataframe

mtcars[2,3] #linha 2 coluna 3

mtcars[,c(1,2)] # concatenar as linhas com as colunas 1 e 2.

library(tibble)
x <- as_tibble(mtcars) # nesse formato é um objeto R, permitindo usar outras funcionalidades como:

# funções do pacote dplyr
filter()
select()
arrange()
mutate()
groupby()
summarise()

imdb_df = read.csv("imdb.csv") #carregar um csv
imdb_tibble = as_tibble(imdb_df)

resultado<- dplyr::select(imdb, titulo)

