#Ejercicio taller 1

valores <- c(23,33,25,45,10,28,39,27,15,38,34,29)

valores[length(valores)+1] = sum(valores)

tabla <- cbind(valores)


colnames(tabla) =("Enero" "Febrero" "Marzo"  "Abril"  "Mayo"  "Junio" "Julio"  "Agosto"  "Septiembre"  
                     "Octubre" "Noviembre" "Diciembre"  "Total")
tabla

