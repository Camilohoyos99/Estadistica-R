#ejercicio Monitoria 1.5

datos = mtcars

mp=datos$ am
hist(table(mp))
mean (mp)

media<- c(1:length(datos))
moda<- c(1:length(datos))
mediana<- c(1:length(datos))
desvs<- c(1:length(datos))
cont =1
for (row in datos){
  media[cont]= mean(row)
  moda[cont]= modes((row))
  mediana[cont]= median(row)
  desvs[cont]= sd(row)
  cont =cont +1
}
for (i in 1:length(datos)){
tabla=cbind(media[i],moda[i],mediana[i],desvs[i])
print(tabla)
print ("__________________________________________")
}
#resumen del punto 1
#A revisar por valores extremos
despla=datos$ disp
capo= datos$hp

hist(table(despla),breaks = 32)
boxplot(despla)
min(despla)
mean(despla)
max(despla)



hist(table(capo),breaks = 4)
boxplot(capo)
min(capo)
mean(capo)
max(capo)

#conclusion:
# Todos tienen forma de obtener valores, sin embargo estos dos atributos presentan
#valores atipicos muy altos comprado con el resto de datos, no permite ver los datos
#de forma clara sin necesidad de hacerles modificaciones

#punto 3
gra<-c(1:length(datos))
cont =1
for (row in datos){
  pie(table(row))
 
 
  
}

#todas las que sean partes de autos se pueden medir bien en este grafico, el resto no sirve

#punto 5 
boxplot(scale(datos))

