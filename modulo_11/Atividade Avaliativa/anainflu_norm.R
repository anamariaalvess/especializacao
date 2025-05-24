# Programa extraído do site: https://www.ime.usp.br/~giapaula/textoregressao.htm
# Créditos: Prof. Dr. Gilberto Alvarenga Paula
# source("C:\\datascience\\Programas\\anainflu_norm.r")
anainflu_norm<-function(fit.model){
  # fit.model: objeto com o ajuste do modelo normal linear homocedástico 
  # obtido através da função "lm"
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
  par(mfrow=c(1,2))
  plot(h,xlab="Índice", ylab="Medida h", pch=16, ylim=c(0,1),cex=1.1,cex.axis=1.1,cex.lab=1.1)
  cut <- 2*p/n
  abline(cut,0,lty=2)
  #identify(h, n=1)
  #title(sub="(a)")
  #
  plot(di,xlab="Índice", ylab="Distância de Cook", pch=16,cex=1.1,cex.axis=1.1,cex.lab=1.1)
  #identify(di, n=2)
  #
  #------------------------------------------------------------#
}