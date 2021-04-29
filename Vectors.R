#como crear un vector 

#crear vector de codigos
codes <- c(380,124,818)

#crear vector de paises
country <- c("italy","canada","egypt")

#asociar codigo con pais
codes <- c(italy=380,canada=124,egypt=818)

#revisar si es que estan vinculados
codes

#tambien se pueden asignar con el comando names(x)
codes <- c(380,124,818)
country <- c("italy","canada","egypt")
names(codes) <- country
codes

#comando para crear secuanbcias es seq(x,x) si se agrega una coma mas uno senala cuantos se salta, tambien se peude logar con el comando x:x
seq(1,10)
seq(1,10,2)
1:10

#subsetting We use square brackets to access elements of a vector. [] tambien se pueden crear el vector para comparar x[c(x,x)]
#tambien se puede acceder a los datos de una columman con x["x"], tambien se puede hacer con multiples entradas
codes[2]
codes[c(1,3)]
codes[1:3]
codes["canada"]
codes[c("egypt","italy")]

#vector coercion es un intento por R para poder ser flexible con los tipos de datos
#ejemplo
x <- c(1,"canada",3)
class(x)
#en este caso convertimos 3 entradas en dato de tipo character siendo que los numeros son de tipo numero se podria decir que R coerciono los tipos de datos de 1 y 3 a tipo de character
#se puede convertir un set de numero a caracteres con el comando as.character o viceversa as.numeric
t <- 1:5
u <- as.character(t)
class(u)
as.numeric(u)

#la data faltante es muy comun y el valor es de NA not available ejemplo
o <- c("1","l","3")
as.numeric(o)

#la funcion sort permite ordenar las entradas de un vector
library(dslabs)
data(murders)
sort(murders$total)

#la funcion order nos permite ordenar el vector segun parametro
x <- c(31, 4, 15, 92, 65)
x
sort(x)    # puts elements in order

index <- order(x)    # returns index that will put x in order
x[index]    # rearranging by this index puts elements in order
order(x)

#ejercicio con los murders
index <- order(murders$total)
murders$abb[index]

max(murders$total)    # highest number of total murders
i_max <- which.max(murders$total)    # index with highest number of murders
murders$state[i_max]    # state name with highest number of total murders

min(murders$total)    # lowest number of total murders
i_min <- which.min(murders$total)    # index with lowest number of murders
murders$state[i_min]    # state name with lowest number of total murders

#rank te entrega un ranking de los valores en un vector dependeiendo de la posicion que tenian
x <- c(31, 4, 15, 92, 65)
rank(x)
#[1] 3 1 2 5 4

----------------------------------------------
#ejercicio que no estaba en la materia pero aparecio en DATACAMP
# Define a variable states to be the state names from the murders data frame
states <- murders$state

# Define a variable ranks to determine the population size ranks 
ranks <- rank(murders$population)

# Define a variable ind to store the indexes needed to order the population values
ind <- order(murders$population)

# Create a data frame my_df with the state name and its rank and ordered from least populous to most 
my_df <- data.frame(states = states[ind], ranks = ranks[ind])
--------------------------------------------------------------

#ejercicio de suma de puertas logicas como true or false
# Using new dataset 
library(dslabs)
data(na_example)

# Checking the structure 
str(na_example)

# Find out the mean of the entire dataset 
mean(na_example)

# Use is.na to create a logical index ind that tells which entries are NA
ind <- is.na(na_example)
# Determine how many NA ind has using the sum function
true <- 1
false <- 0
sum(ind)
-----------------------------
  # Create the ind vector
  library(dslabs)
data(na_example)
ind <- is.na(na_example)

# We saw that this gives an NA                     MEAN ES DE CIERTA MANERA EL PROMEDIO
mean(na_example)

# Compute the average, for entries of na_example that are not NA 
mean(na_example[!ind])
-------------------------------

#VECTOR ARITHMETICS
  # The name of the state with the maximum population is found by doing the following
murders$state[which.max(murders$population)]

# how to obtain the murder rate
murder_rate <- murders$total / murders$population * 100000

# ordering the states by murder rate, in decreasing order
murders$state[order(murder_rate, decreasing=TRUE)]

# Assign city names to `city` 
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")

# Store temperature values in `temp`
temp <- c(35, 88, 42, 84, 81, 30)

# Convert temperature into Celsius and overwrite the original values of 'temp' with these Celsius values
temp <- (temp - 32)*5/9

# Create data frame `city_temps` 
city_temps <- data.frame(name = city, temperature = temp)

