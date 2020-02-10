datos2<-read.csv(file.choose(),sep=";",dec=",")
numCols = ncol(datos2)
par(mfrow=c(numCols,numCols))
par(mar=c(1,1,1,1))
for(name1 in colnames(datos2)){
 for(name2 in colnames(datos2)){
   var1<-datos2[[name1]]
   var2<-datos2[[name2]]
   if(name1==name2){
     boxplot(var1,label=name1,main=name1,yaxt='n')
   }else{
     plot(var1,var2,xlab=name1,ylab=name2,cex=1,pch=20,xaxt='n',yaxt='n',xlim=c(-1,1),ylim=c(-1,1),main=paste(name1," vs ",name2,sep=""))
   }
 } 
}

