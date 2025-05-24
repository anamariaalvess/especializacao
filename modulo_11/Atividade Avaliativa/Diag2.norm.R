# Programa extraído do site: https://www.ime.usp.br/~giapaula/textoregressao.htm
# Créditos: Prof. Dr. Gilberto Alvarenga Paula
# source("C:\\datascience\\Programas\\diag2_norm.r")


diag2norm<-function(fit.model){
  # fit.model: objeto com o ajuste do modelo normal linear homocedÃ¡stico 
  # obtido atravÃ©s da funÃ§Ã£o "lm"
  
  par(mfrow=c(2,2))
  X <- model.matrix(fit.model)
  n <- nrow(X)
  p <- ncol(X)
  H <- X%*%solve(t(X)%*%X)%*%t(X)
  h <- diag(H)
  lms <- summary(fit.model)
  s <- lms$sigma
  r <- resid(lms)
  ts <- r/(s*sqrt(1-h))
  di <- (1/p)*(h/(1-h))*(ts^2)
  si <- lm.influence(fit.model)$sigma
  tsi <- r/(si*sqrt(1-h))
  a <- max(tsi)
  b <- min(tsi)
  par(mfrow=c(2,2))
  #
  plot(tsi,xlab="Ã­ndice", ylab="ResÃ­duo Studentizado",
       ylim=c(b-1,a+1), pch=16,cex=1.1,cex.axis=1.1,cex.lab=1.1)
  abline(2,0,lty=2)
  abline(-2,0,lty=2)
  abline(0,0,lty=2)
  #identify(tsi, n=1)
  #title(sub="(c)")
  #
  plot(fitted(fit.model),tsi,xlab="Valores Ajustados", 
       ylab="ResÃ­duo Studentizado", ylim=c(b-1,a+1), pch=16,cex=1.1,cex.axis=1.1,cex.lab=1.1)
  #
  abline(2,0,lty=2)
  abline(-2,0,lty=2)
  abline(0,0,lty=2)
  #boxplot(tsi,ylab="Res?duo Studentizado",cex=1.1,cex.axis=1.1,cex.lab=1.1)
  hist(tsi,xlab="ResÃ­duo Studentizado",ylab="densidade",probability=TRUE,main="",cex=1.1,cex.axis=1.1,cex.lab=1.1)
  #title(sub="(d)")
  #identify(fitted(fit.model),tsi, n=1)
  #
  boxplot(tsi,ylab="ResÃ­duo Studentizado",cex=1.1,cex.axis=1.1,cex.lab=1.1)
  par(mfrow=c(1,1))
  #------------------------------------------------------------#
  #return(tsi)
  #---------------------------------------------------------------#
}