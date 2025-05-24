# Exemplo Multicolinearidade: Cimentos

require(MASS)
require(car)
require(alr4)
library(stargazer)
library(ggcorrplot)
library(caret)

cimento = dados<-read.table("C:\\datascience\\cimento.txt")
attach(cimento)
head(cimento)
pairs(cimento)

stargazer(cimento,summary = T,median = T,type = "text",digits = 2)
round(cor(cimento, method = "pearson"),2)

ggcorrplot(round(cor(cimento),2),lab = TRUE)
calor <- cimento[,1]
x1 <- cimento[,2]
x2 <- cimento[,3]
x3 <- cimento[,4]
x4 <- cimento[,5]

par(mfrow=c(2,2))
plot(x1, calor, ylab= "Calor do Cimento", pch=16)
lines(smooth.spline(x1,calor,df=3))
plot(x2, calor, ylab= "Calor do Cimento", pch=16)
lines(smooth.spline(x2,calor,df=3))
plot(x3, calor, ylab ="Calor do Cimento", pch=16)
lines(smooth.spline(x3,calor,df=3))
plot(x4, calor, ylab= "Calor do Cimento",  pch=16)
lines(smooth.spline(x4,calor,df=3))

% CENTRALIZANDO AS VARIÁVEIS

scalor = calor - mean(calor)
sx1 = x1 - mean(x1)
sx2 = x2 - mean(x2)
sx3 = x3 - mean(x3)
sx4 = x4 - mean(x4)

fit1.cimento = lm(scalor ~ sx1 + sx2 + sx3 + sx4-1)
summary(fit1.cimento)

fit.model = fit1.cimento
source("C:\\datascience\\Programas\\Diag2.norm.r")
source("C:\\datascience\\Programas\\Envel_norm.r")

diag2norm(fit.model)
par(mfrow=c(1,1))
envelnorm(fit.model)


fit2.cimento = lm(scalor ~ sx1 + sx2 + sx3 + sx4-1, subset=-8)


vif(fit1.cimento)


X = model.matrix(fit1.cimento)
M = t(X)%*%X
eigen(M)
autval=eigen(M)$values
indcond <- max(autval)/min(autval)

% REGRESSÃO RIDGE

fit4.cimento = lm.ridge(scalor ~ sx1 + sx2 + sx3 + sx4-1, lambda=seq(0, 0.20, 0.001))
matplot(fit4.cimento$lambda, coef(fit4.cimento), type = "l", lty=1, 
        xlab = "k", ylab = "Coeficientes",cex=2,cex.lab=1.5, cex.axis=1.5,lwd=4)
text(0.19,1.39,expression(hat(beta)[R1]), cex=2)
text(0.19,0.39,expression(hat(beta)[R2]), cex=2)
text(0.19,-0.06,expression(hat(beta)[R3]), cex=2)
text(0.19,-0.28,expression(hat(beta)[R4]), cex=2)

select(lm.ridge(scalor ~ sx1 + sx2 + sx3 + sx4-1, lambda=seq(0, 0.20, 0.001)))
fit5.cimento = lm.ridge(scalor ~ sx1 + sx2 + sx3 + sx4-1, lambda=0.076)
fit5.cimento
###############################################3
Construindo a matriz de variância e covariância
k = rep(0.076,4)
Ik = diag(k)
Z = M + Ik

s = summary(fit1.cimento)$sigma
s2 = s*s

var.ridge.cimento = s2*(solve(Z)%*%M%*%solve(Z))
ep.ridge.cimento  = sqrt(diag(var.ridge.cimento))
ep.ridge.cimento
#############Outra maneira########

set.seed(1)
modelo <- train(
  calor ~ .,
  data = cimento,
  method = 'ridge'
)
modelo
plot(varImp(modelo))
