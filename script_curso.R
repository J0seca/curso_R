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


####################

variable_integer  = -8
variable_numeric = 3.14
variable_character = "texto"

print(variable_character)

if (variable_integer < variable_numeric)
{
  print("si")
}else if (variable_integer < variable_numeric)
{
  print("no")
}else {
  print("iguales")
}

print("iniciando ciclo while!")

var_while = 0
while (var_while <= 15)
{
  print(var_while)
  var_while = var_while + 1
}

print("Iniciando ciclo for:")


for (num_for in 0:19)
{
  print(num_for)
}



## funciones

# creando un vector numérico para sacar el promedio
x_x<-c(35,5,9,50)
promedio<-mean(x_x)
promedio

abs(-7) #valor absoluto
ceiling(5.3) #redondea hacia arriba
floor(5.3) #redondea hacia abajo
trunc(5.3) #devuelve la parte entera

suma<-function(x,y)
{
  x+y
}
suma(5,7)

# Vector: es un conjunto de datos del mismo tipo con un largo determinado
# puede ser largo 1*
# por lo que un dato también es un vector
# los vectores tienen un tipo, un largo y atributos

# para crear un vector usamos la funcion c() c(combinar)

vector_1<-c(3,4,0, "Hola", NULL, TRUE, NA)
is.vector(vector_1)
length(vector_1)


vector_2<-c(vector_1, 3,68)
length(vector_2)


vector_3<-c(vector_2, vector_1)
vector_3

vector_4<-c(3,5,9,50,88,136,257)
sum(vector_4)
mean(vector_4)
median(vector_4)
sd(vector_4)
range(vector_4)

# Array: Un array es un vector extendido a más de dos dimensiones
# Se usan para representar datos multidimensionales de un único tipo

# se crean usando la función array(datos, dimensiones)

# para aplicar funciones a los elementos del array se usa la funcion
# apply(nombre, dimensión, función)

# para acceder a los elementos del array se usa dimnames(x)

# podemos comprobar si un elemento es un array con is.array()


x<-array(1:12,c(3,1,4))
is.array(x)
x

mean(x)
min(x)
max(x)


# Matriz: extensión de un vector a dos dimensiones, por lo que dispone del atributo dimensión
# 2 DIMENSIONES: filas (alto) y columnas (largo)
# a diferencia de un array la matriz representa datos de un único tipo en dos dimensiones

# Las matrices se crean con la funcion matrix(data, nrow, ncol, byrow=F)

nueva_matriz<-matrix(1:6,nrow=3,ncol=2, byrow=T)
nueva_matriz


nueva_matriz[3, 2]

# Lista: estructuras de datos unidimensionales
# a diferencia del vector, sus elementos pueden ser de distinto tipo
# su estructura es heterogenea

mi_lista<-list(padre="Carlos", madre="Oriana", numero.hermanos=2, nomre.hijos=c("Carlos","María"))
mi_lista

names(mi_lista)
str(mi_lista)

mi_lista[]
mi_lista[[1]]
mi_lista$numero.hermanos
mi_lista$madre


