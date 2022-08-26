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

ls()
# Borrando datos del entorno de trabajo
rm(list=ls())
ls()

#directorio acutal:
getwd()

#definir directorio:
#setwd("C:\")

# Tabla: Estructura rectangular de organizar los datos, con renglones y columnas
# Para leer una tabla se usa read.table(file, header=T, sep=";", col.names=c(nombre ,de, las, columnas),stringsAsFactros=F)

# también existe la funcion read.csv() con los mismos argumentos de read.table()

# Se pueden exportar tablas en un archivo de texto con wirte.table() write() write.csv()

matriz1<-matrix(1:12,3)
matriz1

write.table(matriz1, file="matriz1.data", sep=",", row.names=F, col.names=F)

matriz1txt<-read.table(file="matriz1.data", header=F, sep=",")

matriz1txt

write.csv(matriz1txt, file="matriz1.csv", row.names=F)
matriz1csv<-read.csv(file="matriz1.csv")
matriz1csv


# Funciones graficas de alto nivel
# generan graficos completos

plot(sample(100))
plot(sample(100), ylim=c(50, 90))
plot(sample(100),
     ylim=c(0, 30),
     xlim=c(0,30), 
     ylab="Esto es Y",
     xlab="X por acá!",
     main="Primer gráfico",
     sub="adioos"
     )

plot(rnorm(500))

set.seed(1)

x<-rnorm(10)
y<-x+rnorm(10)

#histograma
hist(x,y)

#barras
barplot(x,y)

#diagrama de caja
boxplot(x,y)

#Funciones graficas de bajo nivel
#añaden elementos a un grafico existente

plot(x,y)
lines(x,y, col="green")


## ggplot2
#librería para representar gráficos

#cargando librerías
library(ggplot2)
library(tidyverse)

datos<-matrix(sample(100),c(1,2))

#cambiando una matriz a data frame
ggplot(data = as.data.frame(datos))


#dataframes: marco de datos u hoja de datos
#ojbeto más habitual para guardar datos en R
#Cada individuo o fecha corresponde a una fila y cada columna a una variable

#filas: casos, individuos u observaciones
#coumnas: atributos, rasgos o variables

#todos los vectores deben tener el mismo largo

#data.frame()

edad = c(30, 33, 21, 25)
tiempo = c(22.15, 23.19, 20.30, 21.50)
sexo =c("M", "F", "F", "M")

nuevos_datos<-data.frame(edad,tiempo,sexo)
nuevos_datos

nuevos_datos$tiempo
nuevos_datos[,3]
nuevos_datos[1:2,2]
nuevos_datos[,"edad"]
mean(nuevos_datos[["edad"]])


# podemos traspasar el contenido del dataframe al entorno de R con esta función:
# attach()
# para acceder directamente a su contenido por el nombre
# después de trabajar se usa detach()

attach(nuevos_datos)
table(edad)
table(sexo)
mean(edad[sexo=="M"])
mean(edad[sexo=="F"])
detach(nuevos_datos)

#con a variable with podemos hacer cálculos dentro del df

with(nuevos_datos,{
  calculo = edad*tiempo
  calculo
})

#filtrando datos

hombres=subset(nuevos_datos, sexo=="M")
hombres


#agregando filas
nuevas_filas<-data.frame(edad=c(22,60), tiempo=c(12.47, 10.30), sexo=c("F", "F"))
nuevos_datos<-rbind(nuevos_datos, nuevas_filas)
nuevos_datos

#agregando columna
nuevos_datos<-cbind(nuevos_datos, codigo=nuevos_datos$edad*nuevos_datos$tiempo)
nuevos_datos


#eliminar columna
nuevos_datos<-nuevos_datos[,-c(4)]
nuevos_datos
