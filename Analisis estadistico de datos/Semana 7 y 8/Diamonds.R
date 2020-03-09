library(ggplot2)

datos<-read.csv(file.choose())

ggplot(datos,aes(y = log(price),x = log(carat),shape = cut, color = clarity)) + geom_point(size=1)
ggplot(datos,aes(y = sqrt(price),x = depth,shape = cut, color = color)) + geom_point(size=1.5)
ggplot(datos,aes(y = sqrt(price),x = x,shape = cut, color = color)) + geom_point(size=1.5)
ggplot(datos,aes(y = sqrt(price),x = y,shape = cut, color = color)) + geom_point(size=1.5)
ggplot(datos,aes(y = sqrt(price),x = z,shape = cut, color = color)) + geom_point(size=1.5)

