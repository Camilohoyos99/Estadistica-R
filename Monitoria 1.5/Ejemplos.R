#Ejemplo 1

datos_1 = c(1,5,3,1,2,3,4,5,1,4,2,4,4,5,1,4,2,4,2,2)

ni =table(datos_1)#frecuencia absoluta
fi = table(datos_1)/length(datos_1) # Frecuencia relativa
Ni = cumsum(ni)
Fi= cumsum (fi)
Tabla_Frec = cbind(ni,fi,Ni,Fi) # Se crea una tabla con todas las frecuencias
Tabla_Frec # Se visualiza la tabla

###############################################################################################
#Ejemplo 2

datos_2=c(105,221,183,186,121,181,180,143,167,141,97,154,153,174,120,168,176,110,158,133,
          245,228,174,199,181,158,156,123,229,146,163,131,154,115,160,208,158,169,148,158,
          207,180,190,193,194,133,150,135,118,149,134,178,76,167,184,135,218,157,101,171,
          165,172,199,151,142,163,145,171,160,175,149,87,160,237,196,201,200,176,150,170)
breaks= seq(70,250,by=20)

datos_2a = cut(datos_2, breaks, right=FALSE); datos_2a # Asigna c/valor a un intervalo
ni = table(datos_2a) # Frecuencia absoluta
fi = table(datos_2a)/length(datos_2a) # Frecuencia relativa
Ni= cumsum(ni) # Frecuencia absoluta acumulada
Fi = cumsum(fi) # Frecuencia relativa acumulada
  
Tabla_Frec = cbind(ni,fi,Ni,Fi) # Se crea una tabla con todas las frecuencias
Tabla_Frec  
  ##################################################################
#Gráfico de tallos y hojas
stem(datos_2,scale=2)
datos_2a
###############################################################
# Gráfico de barras
barplot(table(datos_1))
###############################################################
#histograma
h=hist(datos_2)

h$ breaks # Límites de los intervalos

h$counts # Frecuencia de cada intervalo

h$density # Densidad de cada intervalo

h$mids # Punto central de cada intervalo


new_breaks = seq(70,250,by=20)
h1 = hist(datos_2,breaks=new_breaks)


#Gráfico de sectores
pie(table(datos_1))

#Si se quiere hacer el gráfico de sectores para el ejemplo 2, los datos se tienen que agrupar para poder visualizar
#información relevante.

pie(table(datos_2a))

#######################################################################
#Medias de psosición y tendencia central

#media = mean ()
mean (datos_1)

#mediana
median(datos_1)

#moda
freq= table (datos_1)
freq
freq=sort(freq,TRUE)
freq[1]

library(modes)
modes(datos_1)
##############################################################
#Cuantiles

quantile(datos_2,0.95)

quantile(datos_2,seq(0.1,0.9,by=0.1)) # Todos los deciles

quantile(datos_2,seq(0.25,0.75,by=0.25)) # Todos los cuartiles

#si yo quiero saber la cantidad de valores que hay hasta un quartil
datos_2 < quantile(datos_2,0.25)
sum(datos_2 < quantile(datos_2,0.25))

sum(datos_2 <= 144.5)

# resumen de los datos 
summary(datos_2)
#############################################################
#rando
max(datos_1) - min(datos_1)

diff(range(datos_1))

#############################################################
#Gráfico de caja
bp = boxplot(datos_2)
bp
bp$ stats
a =mtcars

boxplot(scale(a))
