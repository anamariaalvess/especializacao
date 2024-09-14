rm(list=ls()) #limpa as variáveis
getwd() # verifica o diretório
setwd("caminho/para/o/diretório") #mudar diretório
list.files() #lista os arquivos do diretório
dir() #lista os diretórios
if ( boolean_expression) {
  // instruções para executar se a expressão for avaliada como
  verdadeira.
} else {
  // instruções para executar se a expressão for avaliada como falsa.
}

if ( expressao_logica 1 ) {
  // executar se expressão_lógica 1 é verdadeira
} else if ( expressao_logica 2 ) {
  // executar se expressão_lógica 2 é verdadeira
} else if ( expressao_logica 3 ) {
  // executar se expressão_lógica 3 é verdadeira
} else {
  // executar se nenhuma expressão_lógica anterior é verdadeira
}

switch (
  expressão,
  caso1,
  caso2,
  caso3....
)

for( contagem ) {
  . . .
}

repeat {
  \\ operações
  if ( condição ) {
    \\ outras operações
    break
  }
}

while ( expressão ) {
  \\ operações
}

tinytex::uninstall_tinytex()

tinytex::install_tinytex()

