datos<-read.csv(file.choose())



dimDAtos = ncol(datos)

numCols = ncol(datos)
par(mfrow=c(numCols,numCols))
par(mar=c(2,2,2,2))

#Con histograma
for(name1 in colnames(datos)){
  for(name2 in colnames(datos)){
    var1<-datos[[name1]]
    var2<-datos[[name2]]
    if(name1==name2){
      #boxplot(var1)
      #boxplot(var1,label=name1,main=name1,yaxt='n')
      hist(var1, breaks = 10)
    }else{
      plot(var1,var2,xlab=name1,ylab=name2,cex=1,pch=20,,main=paste(name1," vs ",name2,sep=""))
      #plot(var1,var2,xlab=name1,ylab=name2,cex=1,pch=20,xaxt='n',yaxt='n',xlim=c(-1,1),ylim=c(-1,1),main=paste(name1," vs ",name2,sep=""))
    }
  } 
}


# con boxplot
for(name1 in colnames(datos)){
  for(name2 in colnames(datos)){
    var1<-datos[[name1]]
    var2<-datos[[name2]]
    if(name1==name2){
      #boxplot(var1)
      boxplot(var1,label=name1,main=name1,yaxt='n')
      #hist(var1, breaks = 10)
    }else{
      plot(var1,var2,xlab=name1,ylab=name2,cex=1,pch=20,,main=paste(name1," vs ",name2,sep=""))
      #plot(var1,var2,xlab=name1,ylab=name2,cex=1,pch=20,xaxt='n',yaxt='n',xlim=c(-1,1),ylim=c(-1,1),main=paste(name1," vs ",name2,sep=""))
    }
  } 
}



# Calcular  autovalores
matrizcov<-cov(datos)

#matrizcov

eigenDatos <- eigen(matrizcov)
values_p = eigenDatos$values
vectors_p = eigenDatos$vectors

rad_espec = which(values_p==max(values_p))
colors= c("red","blue","green","purple","orange")

y_max = max(vectors_p)
y_min = min (vectors_p)

vec_max = which(values_p==y_max)
for (i in 1:dim(vectors_p)[1] ){
(plot(vectors_p[,i],type="l",col=colors[i], ylim =c(y_min,y_max)))
} 


