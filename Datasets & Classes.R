library(dslabs)
#para cargar un data set se utiliza data("x")
data("murders")

#para saber la clase de un objeto se tipea class(x)
class(murders)

#para saber la estructura de un data set o data frame si utiliza
str(murders)

#para ver las primeras lineas de un data set head(x)
head(murders)

#el signo $ es el accesor para ver la data de una variable x$variable
murders$population

#para saber el nombre de una columna names(x)
names(murders)

#asiganar una variable para ver los datos de una columna x x<- nombre y despues length(x) me dira la cantidad de filas o observaciones tiene esa variable
pop <- murders$population
length(pop)

#existen los vectores logicos
z <- 3==2
z
class(z)

#clase de factor son categorias como regiones se denominan categorical data, para saber las categorias levels(x$variable)
levels(murders$region)
class(murders$region)

