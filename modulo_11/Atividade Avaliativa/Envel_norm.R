# Programa extraído do site: https://www.ime.usp.br/~giapaula/textoregressao.htm
# Créditos: Prof. Dr. Gilberto Alvarenga Paula
# source("C:\\datascience\\Programas\\Envel_norm.r")

envelnorm<-function(fit.model){
  # fit.model: objeto com o ajuste do modelo normal linear homocedÃ¡stico 
  # obtido atravÃ©s da funÃ§Ã£o "lm"
  
  #par(mfrow=c(1,1))
  X <- model.matrix(fit.model)
  n <- nrow(X)
  p <- ncol(X)
  H <- X%*%solve(t(X)%*%X)%*%t(X)
  h <- diag(H)
  si <- lm.influence(fit.model)$sigma
  r <- resid(fit.model)
  tsi <- r/(si*sqrt(1-h))
  #
  ident <- diag(n)
  epsilon <- matrix(0,n,100)
  e <- matrix(0,n,100)
  e1 <- numeric(n)
  e2 <- numeric(n)
  #
  for(i in 1:100){
    epsilon[,i] <- rnorm(n,0,1)
    e[,i] <- (ident - H)%*%epsilon[,i]
    u <- diag(ident - H)
    e[,i] <- e[,i]/sqrt(u)
    e[,i] <- sort(e[,i]) }
  #
  for(i in 1:n){
    eo <- sort(e[i,])
    e1[i] <- (eo[2]+eo[3])/2
    e2[i] <- (eo[97]+eo[98])/2 }
  #
  med <- apply(e,1,mean)
  faixa <- range(tsi,e1,e2)
  #
  #par(pty="s")
  qqnorm(tsi,xlab="Percentil da N(0,1)",
         ylab="ResÃ­duo Studentizado", ylim=faixa, pch=16, main="",cex=1.1,cex.axis=1.1,cex.lab=1.1)
  par(new=T)
  qqnorm(e1,axes=F,xlab="",ylab="",type="l",ylim=faixa,lty=1, main="")
  par(new=T)
  qqnorm(e2,axes=F,xlab="",ylab="", type="l",ylim=faixa,lty=1, main="")
  par(new=T)
  qqnorm(med,axes=F,xlab="",ylab="",type="l",ylim=faixa,lty=2, main="")
  #------------------------------------------------------------#
}