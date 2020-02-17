datos<-read.csv(file.choose(),sep=";")

matrizcov<-cov(datos)
#matrizcov

eigenDatos <- eigen(matrizcov)

dimDAtos = ncol(datos)


min 
numCols = ncol(datos)
par(mfrow=c(numCols,numCols))
par(mar=c(1,1,1,1))
for(name1 in colnames(datos)){
  for(name2 in colnames(datos)){
    var1<-datos[[name1]]
    var2<-datos[[name2]]
    if(name1==name2){
      #boxplot(var1)
      boxplot(var1,label=name1,main=name1,yaxt='n')
    }else{
    
      #plot(var1,var2)
      plot(var1,var2,xlab=name1,ylab=name2,cex=1,pch=20,xaxt='n',yaxt='n',xlim=c(-1,1),ylim=c(-1,1),main=paste(name1," vs ",name2,sep=""))
    }
  } 
}
