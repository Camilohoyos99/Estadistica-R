bernoulli <- function(p){
  x <- runif(1)
  if(x <= p){
    0
  }
  else{
    1
  }
}

Binomial <- function(n,p){
  r <- rep(0,n)
  for(i in 1:n){
    x = bernoulli(p)
    r[i] = x
  }
  return(r)
}

diagramaBinomial <- function(){
  Binomial(2000,0.5)
}

datos <- diagramaBinomial()

#Diagrama 1

d1 = hist(datos, main = "Experimento Binomial.", xlab = "Valor",
          ylab = "Frecuencia", col = "blue", xlim = c(0,1), breaks = 40 )
#Diagrama 2

plot(table(datos)/2000, main = "Experimento Binomial.", 
        ylim = c(0, 1), 
        xlab = "Valores", 
        ylab = "x/2", 
       col = c("red", "green"))