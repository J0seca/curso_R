# CURSO R TELEDUC

#tipos básicos de datos (o vectores atómicos)

#número entero
var_integer <- 3

#número decimal
var_numeric <- 1.7

#carácter o cadena de texto
var_character <- "adiós!"

#Valor lógico o booleano
val_logical <- TRUE

#se puede añadir L como sufijo del valor de una variable para especificar que es de tipo entero
#ejemplo

edad <- 33L

edad

#Los valores booleanos TRUE o FALSE se pueden abreviar con las letras T o F

if(3>4) 
  {
  print(T)
} else {
  print(F)
}

verdadero<-3<4
falso<-3>4
verdadero
falso

typeof(falso)
falso<-as.character(falso)
typeof(falso)
### OTROS TIPOS DE DATOS EN R

# FACTOR
# tipo numperico representado por una etiqueta

# DATE
# representa fechas

# COMPLEX
# Números complejos o imaginarios

# RASTER
# Imágener digitales en pixeles

# RAW
# Para convertir datos a bytes sin procesar

### Coerción de vectores atómicos
# La coerción se realiza de los datos más restrictivos a los más flexibles

# lógico -> entero -> numérico -> cadena de texto
#se usa la fucnción as()

as.logical(verdadero)
as.integer(verdadero)
as.numeric(verdadero)
as.character(verdadero)
as.null(verdadero)


#determinar tipo de un dato/vector

dato<-3.0
class(dato)
typeof(dato)

#verificar tipo de dato con respuesta lógica

is.integer(falso)
is.numeric(falso)
is.character(falso)
is.logical(falso)

