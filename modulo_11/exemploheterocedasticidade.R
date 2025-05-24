##Exemplo heterocedasticidade

restaurantes = read.table("C:\\cynthia\\fen\\heterocedasticidade\\restaurantes.txt",header=TRUE)
attach(restaurantes)

pairs(restaurantes)
require(robustbase)
adjbox(faturamento, ylab="Faturamento")
plot(density(faturamento), ylab="Densidade", xlab="Faturamento", main="")
adjbox(publicidade, ylab="Gastos com Publicidade")

plot(publicidade, faturamento, ylab="Faturamento", xlab="Gastos com Publicidade",pch=16)
lines(smooth.spline(publicidade, faturamento, df=3))
library(stargazer)
stargazer(restaurantes,summary = T,median = T,type = "text",digits = 2)

ajuste1.restaurantes = lm(faturamento ~ publicidade)
summary(ajuste1.restaurantes)

fit.model = ajuste1.restaurantes
fit.model = lm(faturamento ~ publicidade) 
ggplot(fit.model, aes(faturamento, publicidade)) + 
  geom_point()+ 
  geom_smooth(method = "lm")
source("C:\\cynthia\\fen\\heterocedasticidade\\EnvelopeNormal.txt")
source("C:\\cynthia\\fen\\heterocedasticidade\\ResiduoNormal.txt")
source("C:\\cynthia\\fen\\heterocedasticidade\\CookNormal.txt")
### Teste BP
#load lmtest library
library(lmtest)

#perform Breusch-Pagan Test
Testebp=bptest(ajuste1.restaurantes)

library(stargazer)

stargazer(Testebp,type = "text")

# REGRESSÃO PONDERADA
z = faturamento*sqrt(peso)
u0 = sqrt(peso)
u1 = publicidade*sqrt(peso)

fit2.restaurantes = lm(z ~ u0 + u1 - 1)
summary(fit2.restaurantes)

fit.model = fit2.restaurantes
source("C:\\cynthia\\fen\\heterocedasticidade\\EnvelopeNormal.txt")
source("C:\\cynthia\\fen\\heterocedasticidade\\ResiduoNormal.txt")
source("C:\\cynthia\\fen\\heterocedasticidade\\CookNormal.txt")

#Alternativa::: Usando o lm com comando para regressão ponderada

fit.model<-lm(faturamento~publicidade,weights=c(peso))# ajuste do modelo
summary(fit.model)
require(car) 
lmtest::bptest(fit.model)
ncvTest(fit.model)

# MODELAGEM DUPLA 

require(dglm)
fit3.restaurantes = dglm(faturamento ~ publicidade, ~ publicidade)
summary(fit3.restaurantes)

fit.model = fit3.restaurantes
source("C:\\cynthia\\fen\\heterocedasticidade\\normalduplo.txt")
source("C:\\cynthia\\fen\\heterocedasticidade\\residuosduplo.txt")


#-----------------------------------------------------------------------#
#Resíduo Normal Duplo


#-----------------------------------------------------------------------#
# Comandos:
#        > fit.model <- ajuste
#        > attach(dados)
#        > source("resid_norm_dglm")
#-----------------------------------------------------------------------#
X <- model.matrix(fit.model)
n <- nrow(X)
p <- ncol(X)
require(dglm)
fi <- fitted(fit.model$dispersion)
fi <- 1/fi
for(i in 1:n){
  X[i,] = fi[i]*X[i,]
}
H <- X%*%solve(t(X)%*%X)%*%t(X)
h <- diag(H)
r <- resid(fit.model)
ts <- (sqrt(fi)*r)/sqrt(1-h)
di <- (h/(1-h))*(ts^2)
a <- max(ts)
b <- min(ts)
#
plot(fitted(fit.model),ts,xlab="Valor Ajustado", 
     ylab="Residuo Studentizado", ylim=c(b-1,a+1), pch=16, cex=2, cex.axis=1.5,
     cex.lab=1.5)
#-----------------------------------------------------------------------#
#Para verificar independência dos resíduos foi ajustado 
#o teste de Durbin Watson que possui hipótese nula de ausência de 
#correlação serial e sua estatística do teste é construída somente 
#com os resíduos. Ao nível de 5% de significância não encontramos indícios
#para rejeitar a hipótese de correlação, portanto é mais um pressuposto 
#atendido.

# Test for Autocorrelated Errors
durbinWatsonTest(fit.model)
# Evaluate homoscedasticity
lmtest::bptest(fit.model)


