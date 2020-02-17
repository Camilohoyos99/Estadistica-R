# Ejercicio 1  industria farmaceutica 

    #Datos
v <- c(172,140,123,130,115,148,108,129,137,161,123,152,133,128,142);
v = sort(v);
# histograma de frecuencia relativas

hist (v, 15, freq = TRUE ,main = 'Presiones sistólicas' ,xlab= 'datos', ylab ='frec relativa' )

# calcule la media y la desviación estandar

y = mean (v)
s = sd(v)

# teorema de tchebysheff hallar a y b 

k = sqrt(1/(0.75 - 1)*-1)

a = y - k*s
b = y +k *s

# comprobar teorema de tchebysheff

(sum (( v > a)&(v < b)) *100) /20

