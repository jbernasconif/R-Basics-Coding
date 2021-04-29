n <- 1000
x <- seq(1,n)
sum(x)

# Here is how you compute the sum for the first 20 integers
20*(20+1)/2 

# However, we can define a variable to use the formula for other values of n
n <- 20
n*(n+1)/2

n <- 25
n*(n+1)/2

# Below, write code to calculate the sum of the first 100 integers
n <- 100
n*(n+1)/2

# To access the population variable from the murders dataset use this code:
p <- murders$population 

# To determine the class of object `p` we use this code:
class(p)

# Use the accessor to extract state abbreviations and assign it to a
a <- murders$abb
# Determine the class of a
class(a)

# We extract the population like this:
p <- murders$population

# This is how we do the same with the square brackets:
o <- murders[["population"]] 

# We can confirm these two are the same
identical(o, p)

# Use square brackets to extract `abb` from `murders` and assign it to b
a <- murders$abb
b <- murders[["abb"]]
# Check if `a` and `b` are identical 
identical(a,b)

# We can see the class of the region variable using class
class(murders$region)

# Determine the number of regions included in this variable
length(levels(murders$region))

# The "c" in `c()` is short for "concatenate," which is the action of connecting items into a chain
# The function `c()` connects all of the strings within it into a single vector, which we can assign to `x`
x <- c("a", "a", "b", "b", "b", "c")
# Here is an example of what the table function does
table(x)

# Write one line of code to show the number of states per region
table(murders$region)

install.packages("dslabs")
library(dslabs)
data(movielens)

# Here is an example creating a numeric vector named cost
cost <- c(50, 75, 90, 100, 150)

# Create a numeric vector to store the temperatures listed in the instructions into a vector named temp
# Make sure to follow the same order in the instructions
temp <- c(35,88,42,84,81,30)

# Associate the cost values with its corresponding food item
cost <- c(50, 75, 90, 100, 150)
food <- c("pizza", "burgers", "salads", "cheese", "pasta")
names(cost) <- food

# You already wrote this code
temp <- c(35, 88, 42, 84, 81, 30)
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")

# Associate the temperature values with its corresponding city
names(temp) <- city

# cost of the last 3 items in our food list:
cost[3:5]

# temperatures of the first three cities in the list:
temp[1:3]

# Access the cost of pizza and pasta from our food list 
cost[c(1,5)]

# Define temp
temp <- c(35, 88, 42, 84, 81, 30)
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")
names(temp) <- city

# Access the temperatures of Paris and San Juan
temp[c(3,5)]

# Create a vector with the multiples of 7, smaller than 50.
seq(7, 49, 7) 

# Create a vector containing all the positive odd numbers smaller than 100.
# The numbers should be in ascending order
seq(1, 100, 2)

# We can create a vector with the multiples of 7, smaller than 50 like this 
seq(7, 49, 7) 

# But note that the second argument does not need to be the last number
# It simply determines the maximum value permitted
# so the following line of code produces the same vector as seq(7, 49, 7)
seq(7, 50, 7)

# Create a sequence of numbers from 6 to 55, with 4/7 increments and determine its length
length(seq(6, 55, 4/7))

# Sequences of certain length
# The seq() function has another useful argument. The argument length.out. This argument lets us generate sequences that are increasing by the same amount but are of the prespecified length.
# For example, this line of code

x <- seq(0, 100, length.out = 5)
#produces the numbers 0, 25, 50, 75, 100.

#Lets create a vector and see what is the class of the object produced.

# Store the sequence in the object a
a <- seq(1, 10, length.out = 100)

# Determine the class of a
class(a)

# Define the vector x
x <- c(1, 3, 5,"a")

# Note that the x is character vector
x

# Use `as.numeric` to coerce `x` to a numeric vector. Be sure to reassign the new vector as `x`.
x <- as.numeric(x)

# Access the `state` variable and store it in an object 
states <- murders$state 

# Sort the object alphabetically and redefine the object 
states <- sort(states) 

# Report the first alphabetical value  
states[1]

# Access population values from the dataset and store it in pop
pop <- murders$population
# Sort the object and save it in the same object 
pop <- sort(pop)
# Report the smallest population size 
pop[1]

# Access population from the dataset and store it in pop
pop <- murders$population
# Use the command order to find the vector of indexes that order pop and store in object ord
ord <- order(pop)
# Find the index number of the entry with the smallest population size
ord[1]

# Find the index of the smallest value for variable total 
which.min(murders$total)

# Find the index of the smallest value for population
which.min(murders$population)

# Define the variable i to be the index of the smallest state
i <- which.min(murders$population)

# Define variable states to hold the states
states <- murders$state

# Use the index you just defined to find the state with the smallest population
states[i]

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

# Load the data
library(dslabs)
data(murders)

# Store the per 100,000 murder rate for each state in murder_rate
murder_rate <- murders$total / murders$population * 100000 
# Calculate the average murder rate in the US 
mean(murder_rate)

# Assign city names to `city` 
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")

# Store temperature values in `temp`
temp <- c(35, 88, 42, 84, 81, 30)

# Convert temperature into Celsius and overwrite the original values of 'temp' with these Celsius values
temp <- (temp - 32)*5/9

# Create data frame `city_temps` 
city_temps <- data.frame(name = city, temperature = temp)

# Store the murder rate per 100,000 for each state, in `murder_rate`
murder_rate <- murders$total / murders$population * 100000

# Store the `murder_rate < 1` in `low` 
low <- murder_rate < 1

# Store the murder rate per 100,000 for each state, in murder_rate
murder_rate <- murders$total/murders$population*100000

# Store the murder_rate < 1 in low 
low <- murder_rate < 1

# Get the indices of entries that are below 1
which(murder_rate < 1)

# Store the murder rate per 100,000 for each state, in murder_rate
murder_rate <- murders$total/murders$population*100000

# Store the murder_rate < 1 in low 
low <- murder_rate < 1

# Names of states with murder rates lower than 1
murders$state[low]

# Store the murder rate per 100,000 for each state, in `murder_rate`
murder_rate <- murders$total/murders$population*100000

# Store the `murder_rate < 1` in `low` 
low <- murder_rate < 1

# States in the Northeast with murder rates lower than 1; store in 'ind'
ind <- low & murders$region=="Northeast"

# Names of states in `ind`
murders$state[ind]

# Store the murder rate per 100,000 for each state, in murder_rate
murder_rate <- murders$total/murders$population*100000


# Compute the average murder rate using `mean` and store it in object named `avg`
avg <- mean(murder_rate)

# How many states have murder rates below avg ? Check using sum 
sum(murder_rate < avg)

# Store the 3 abbreviations in a vector called `abbs` (remember that they are character vectors and need quotes)
abbs <- c("AK", "MI", "IA")

# Match the abbs to the murders$abb and store in `ind`
ind <- match(abbs , murders$abb)

# Print state names from `ind`
murders$state[ind]

# Store the 5 abbreviations in `abbs`. (remember that they are character vectors)
abbs <- c("MA", "ME", "MI", "MO", "MU")

# Use the %in% command to check if the entries of abbs are abbreviations in the the murders data frame
abbs%in%murders$abb

# Store the 5 abbreviations in `abbs`. (remember that they are character vectors)
abbs <- c("MA", "ME", "MI", "MO", "MU") 

# Use the `which` command and `!` operator to find out which index abbreviations are not actually part of the dataset and store in 'ind' 
ind <- which(!abbs%in%murders$abb)

# Names of abbreviations in `ind`
abbs[ind]

# Note that if you want ranks from highest to lowest you can take the negative and then compute the ranks 
x <- c(88, 100, 83, 92, 94)
rank(-x)

# Defining rate
rate <-  murders$total/ murders$population * 100000

# Redefine murders to include a column named rank
# with the ranks of rate from highest to lowest
murders <- mutate(murders, rank = rank(-rate))

# Load dplyr
library(dplyr)
data("murders")
# Use select to only show state names and abbreviations from murders
select(murders, state, abb)

# Add the necessary columns
murders <- mutate(murders, rate = total/population * 100000, rank = rank(-rate))

# Filter to show the top 5 states with the highest murder rates
filter(murders, rank <= 5)

# Use filter to create a new data frame no_south
no_south <- filter(murders, region != "South")
# Use nrow() to calculate the number of rows
nrow(no_south)

# Create a new data frame called murders_nw with only the states from the northeast and the west
murders_nw <- filter(murders, region %in% c("Northeast", "West"))
# Number of states (rows) in this category 
nrow(murders_nw)

# add the rate column
murders <- mutate(murders, rate =  total / population * 100000, rank = rank(-rate))

# Create a table, call it my_states, that satisfies both the conditions 
my_states <- filter(murders, region %in% c("Northeast", "West"), rate < 1)
# Use select to show only the state name, the murder rate and the rank
select(my_states, state, rate, rank)

#PIPELINE EJEMPLO
mutate(murders, rate =  total / population * 100000, rank = (-rate)) %>% 
  select(state, rate, rank)
# Load library
library(dplyr)

## Define the rate column
murders <- mutate(murders, rate =  total / population * 100000, rank = rank(-rate))

# show the result and only include the state, rate, and rank columns, all in one line, in that order
filter(murders, region %in% c("Northeast", "West") & rate < 1) %>% 
  select(state, rate, rank)

# Loading the libraries
library(dplyr)
data(murders)

# Create new data frame called my_states (with specifications in the instructions)
my_states <- murders %>% mutate(rate =  total / population * 100000, rank = rank(-rate)) %>% filter(region %in% c("Northeast", "West") & rate < 1) %>% select(state, rate, rank)

# Load the datasets and define some variables
library(dslabs)
data(murders)
population_in_millions <- murders$population/10^6
total_gun_murders <- murders$total
plot(population_in_millions, total_gun_murders)

# Transform population (not population in millions) using the log10 transformation and save to object log10_population
log10_population<- log10(murders$population)

# Transform total gun murders using log10 transformation and save to object log10_total_gun_murders
log10_total_gun_murders <- log10(murders$total)

# Create a scatterplot with the log scale transformed population and murders 
plot(log10_population, log10_total_gun_murders)

# Store the population in millions and save to population_in_millions 
population_in_millions <- murders$population/10^6


# Create a histogram of this variable
hist(population_in_millions)

# Create a boxplot of state populations by region for the murders dataset
boxplot(population~region, data = murders)

---
  title: Programming Basics
description: Programming Basics
---
  
  ## Conditionals
  
  ```yaml
type: MultipleChoiceExercise
key: 77691772c6
lang: r
xp: 50
skills:
  - 1
```

What will this conditional expression return?
  Run it from the console. 

```{r}
x <- c(1,2,-3,4)
if(all(x>0)){
  print("All Positives")
} else{
  print("Not All Positives")
}
```

`@possible_answers`
- All Positives
- Not All Positives
- N/A
- None of the above

`@hint`
Are the numbers stored in `x` all positive? If not the `print` after the `else` is evaluated.

`@pre_exercise_code`
```{r}
# no pec
```

`@sct`
```{r}
msg1 = "Are all the entries in `x` positive?"
msg2 = "Awesome! That is correct."
msg3 = "In R you can vectorize logical relations like this. There is no reason to have `NA`s"
msg4 = "If `all(x>0)` is `TRUE` or `FALSE` something is returned."
test_mc(correct = 2, feedback_msgs = c(msg1,msg2,msg3,msg4))
```

---
  
  ## Conditional continued
  
  ```yaml
type: MultipleChoiceExercise
key: 78dfb810dd
lang: r
xp: 50
skills:
  - 1
```

Which of the following expressions is always `FALSE` when at least one entry of a logical vector x is `TRUE`? You can try examples in the R console.

`@possible_answers`
- all(x) 
- any(x) 
- any(!x) 
- all(!x)

`@hint`
Define a logical vector `x` such as `c(TRUE, FALSE)` and `c(TRUE, TRUE)` and test them.

`@pre_exercise_code`
```{r}
# no pec
```

`@sct`
```{r}
msg1 = "Try `x <- c(TRUE, FALSE)` or `x <- c(TRUE, TRUE)`."
msg2 = "Try `x <- c(TRUE, TRUE)`"
msg3 = "Try `x <- c(TRUE, FALSE)"
msg4 = "Good job! Let's move to the next question."
test_mc(correct = 4, feedback_msgs = c(msg1,msg2,msg3,msg4))
```

---
  
  ## ifelse
  
  ```yaml
type: NormalExercise
key: 04735d26b3
lang: r
xp: 100
skills:
  - 1
```

The function `nchar` tells you how many characters long a character vector is. For example:
  
  ```{r}
char_len <- nchar(murders$state)
head(char_len)
```

The function `ifelse` is useful because you convert a vector of logicals into something else. For example, some datasets use the number -999 to denote NA. A bad practice! You can convert the -999 in a vector to NA using the following `ifelse` call:
  ```{r}
x <- c(2, 3, -999, 1, 4, 5, -999, 3, 2, 9)
ifelse(x == -999, NA, x)
```
If the entry is -999 it returns NA, otherwise it returns the entry.

`@instructions`
We will combine a number of functions for this exercise.
- Use the `ifelse` function to write one line of code that assigns to the object `new_names` the state abbreviation when the state name is longer than 8 characters and assigns the state name when the name is not longer than 8 characters.

For example, where the original vector has Massachusetts (13 characters), the new vector should have MA. But where the original vector has New York (8 characters), the new vector should have New York as well.

`@hint`
Use a call to `nchar` as the first argument of the `ifelse` function to calculate. Check to see if it's larger than 8. Then you use `murders$abb` and `murders$state` in the second and third arguments to return either the abbreviation or state name depending on the number of characters.

`@pre_exercise_code`
```{r}
library(dslabs)
data(murders)
```

`@sample_code`
```{r}
# Assign the state abbreviation when the state name is longer than 8 characters 
```

`@solution`
```{r}
# Assign the state abbreviation when the state name is longer than 8 characters 
new_names <- ifelse(nchar(murders$state)>8, murders$abb, murders$state)
```

`@sct`
```{r}
test_error()
test_function("ifelse")
test_object("new_names", undefined_msg = "Make sure you define new_names!", incorrect_msg = "It has to be one line of code. Combine nchar and ifelse. The objects being used inside the function should be `murders$state` and `murders$abb`. Also we are looking for `nchar(murders$state)` strictly larger than 8.")
success_msg("Woohoo! You're becoming a pro at this!")
```

---

## Defining functions

```yaml
type: NormalExercise
key: 3d324d0749
lang: r
xp: 100
skills:
  - 1
```

You will encounter situations in which the function you need does not already exist. R permits you to write your own.  Let's practice one such situation, in which you first need to define the function to be used. The functions you define can have multiple arguments as well as default values.

To define functions we use `function`. For example the following function adds 1 to the number it receives as an argument:

```{r}
my_func <- function(x){
    y <- x + 1
    y
}
```

The last value in the function, in this case that stored in `y`, gets returned.

If you run the code above R does not show anything. This means you defined the function. You can test it out like this:

```{r}
my_func(5)
```

`@instructions`
We will define a function `sum_n` for this exercise.
- Create a function `sum_n` that for any given value, say `n`, creates the vector `1:n`, and then computes the sum of the integers from 1 to n. 
- Use the function you just defined to determine the sum of integers from 1 to 5,000.

`@hint`
- To make it inclusive, use {}. 
- You can define the function like this:

```{r}
sum_n <- function(n){
    x <- 1:n
    sum(x)
}
```

`@pre_exercise_code`
```{r}
# no pec 
```

`@sample_code`
```{r}
# Create function called `sum_n`
# Use the function to determine the sum of integers from 1 to 5000
```

`@solution`
```{r}
# Create function called `sum_n`
sum_n <- function(n){
    x <- 1:n
    sum(x)
}
# Determine the sum of integers from 1 to 5000
sum_n(5000)
```

`@sct`
```{r}
test_error()
test_function("sum_n", incorrect_msg = "You need to check for the sum of 5000 integers!")
fun_def <- ex() %>% check_fun_def("sum_n")
fun_def %>% check_arguments()
fun_def %>% check_call(5000) %>% check_result() %>% check_equal()
fun_def %>% check_call(100) %>% check_result() %>% check_equal()
fun_def %>% check_call(1000) %>% check_result() %>% check_equal()
fun_def %>% check_body()
success_msg("This is awesome! Let's get to the next exercise.")
```

---

## Defining functions continued...

```yaml
type: NormalExercise
key: ea64484119
lang: r
xp: 100
skills:
  - 1
```

We will make another function for this exercise. We will define a function `altman_plot` that takes two arguments `x` and `y` and plots the difference `y-x` in the y-axis against the sum `x+y` in the x-axis. 

You can define functions with as many variables as you want. For example, here we need at least two, `x` and `y`. The following function plots log transformed values:

```{r}
log_plot <- function(x, y){
    plot(log10(x), log10(y))
}
```

This function does not return anything. It just makes a plot.

`@instructions`
We will make another function for this exercise.
- Create a function `altman_plot` that takes two arguments `x` and `y` and plots `y-x` (on the y-axis) against `x+y` (on the x-axis).
	- Note: don't use parentheses around the arguments in the `plot` function because you will confuse R.

`@hint`
The command inside the function should be: `plot(x + y, y - x)`. Remember to define a function you use

```{r}
altman_plot <- function(var_1, var_2){
  # code that uses var_1 and var_2
}
```

`@pre_exercise_code`
```{r}
# no pec 
```

`@sample_code`
```{r}
# Create `altman_plot` 
```

`@solution`
```{r}
# Create `altman_plot` 
altman_plot <- function(x, y){
  plot(x + y, y - x)
}
```

`@sct`
```{r}
test_error()
test_function_definition("altman_plot",
                         body_test = {
                           test_function("plot", incorrect_msg = "Make sure you call `plot` inside your function")
                         },
                         undefined_msg = "Be sure to define `altman_plot`.",
                         incorrect_number_arguments_msg = "Make sure the function takes two arguments.")
test_object("altman_plot", incorrect_msg = "Make sure you use `x` and `y` as your arguments and that you plot the difference `y-x` versus the sum `x+y`. Please write the sum as `x+y` not `y+x`. Also, for this exercise, we want you to use the curly brackets `{ }` as in the example. Do not use () around the arguments in the `plot` function because you will confuse R.") 
success_msg("That's great! You can also play around with the variables and put in values for x and y.")
```

---
  
  ## Lexical scope
  
  ```yaml
type: NormalExercise
key: f13e10ed3c
lang: r
xp: 100
skills:
  - 1
```

Lexical scoping is a convention used by many languages that determine when an object is available by its name. When you run the code below you will see which `x` is available at different points in the code.

```{r}
x <- 8
my_func <- function(y){
  x <- 9
  print(x)
  y + x
}
my_func(x)
print(x)
```
Note that when we define `x` as 9, this is inside the function, but it is 8 after you run the function. The `x` changed inside the function but not outside.

`@instructions`
After running the code below, what is the value of `x`?
  ```{r}
x <- 3
my_func <- function(y){
  x <- 5
  y
  print(x)
}
my_func(x)
```

`@hint`
Run the code and then `print(x)`. You will have the answer.

`@pre_exercise_code`
```{r}
x <- 3
```

`@sample_code`
```{r}
# Run this code 
x <- 3
my_func <- function(y){
  x <- 5
  y+5
}
# Print the value of x 
```

`@solution`
```{r}
# Show value of x
x
```

`@sct`
```{r}
test_error()
test_object("x", incorrect_msg = "How do you print the value of x?")
success_msg("Good job!") 
```

---
  
  ## For loops
  
  ```yaml
type: NormalExercise
key: efe45f5c56
lang: r
xp: 100
skills:
  - 1
```

In the next exercise we are going to write a for-loop. In that for-loop we are going to call a function. We define that function here.

`@instructions`
- Write a function `compute_s_n` that for any given $n$ computes the sum $S_n = 1^2 + 2^2 + 3^2 + \dots + n^2$. 
- Report the value of the sum when `n=10`.

`@hint`
The function will look something like this:
  
  ```{r}
compute_s_n <- function(n){
  x <- 1:n
  ## sum the vector after you square it
}
```
Then you evaluate it at 10: `compute_s_n(10)`

`@pre_exercise_code`
```{r}
# no pec 
```

`@sample_code`
```{r}
# Here is an example of a function that adds numbers from 1 to n
example_func <- function(n){
  x <- 1:n
  sum(x)
}
# Here is the sum of the first 100 numbers
example_func(100)
# Write a function compute_s_n with argument n that for any given n computes the sum of 1 + 2^2 + ...+ n^2
# Report the value of the sum when n=10
```

`@solution`
```{r}
# Here is a function that adds numbers from 1 to n
example_func <- function(n){
  x <- 1:n
  sum(x)
}
# Here is the sum of the first 100 numbers
example_func(100)
# Write a function compute_s_n with argument n that for any given n computes the sum of 1 + 2^2 + ...+ n^2
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}
# Report the value of the sum when n=10
compute_s_n(10)
```

`@sct`
```{r}
test_error()
test_function_result("compute_s_n", incorrect_msg ="Make sure your function is producing the correct output.")
test_output_contains("compute_s_n(10)", incorrect_msg = "Make sure your function is producing the correct output.")
test_student_typed("compute_s_n(10)", not_typed_msg = "Make sure you evaluate the function at 10 in the last line.")
fun_def <- ex() %>% check_fun_def("compute_s_n")
fun_def %>% check_arguments()
fun_def %>% check_call(10) %>% check_result() %>% check_equal()
fun_def %>% check_call(100) %>% check_result() %>% check_equal()
fun_def %>% check_call(1000) %>% check_result() %>% check_equal()
fun_def %>% check_body()
success_msg("That's awesome! You're getting so good at this!")
```

---
  
  ## For loops continued...
  
  ```yaml
type: NormalExercise
key: a9bf58a40c
lang: r
xp: 100
skills:
  - 1
```

Now we are going to compute the sum of the squares for several values of $n$. We will use a for-loop for this. Here is an example of a for-loop:
  
  ```{r}
results <- vector("numeric", 10)
n <- 10
for(i in 1:n){
  x <- 1:i
  results[i] <- sum(x)
}
```

Note that we start with a call to `vector` which constructs an empty vector that we will fill while the loop runs.

`@instructions`
- Define an empty numeric vector `s_n` of size 25 using `s_n <- vector("numeric", 25)`.
- Compute the the sum when n is equal to each integer from 1 to 25 using the function we defined in the previous exercise: `compute_s_n`
- Save the results in `s_n`

`@hint`
The line of code inside the function will be `s_n[i] <- compute_s_n(i)`.

`@pre_exercise_code`
```{r}
# no pec 
```

`@sample_code`
```{r}
# Define a function and store it in `compute_s_n`
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}
# Create a vector for storing results
s_n <- vector("numeric", 25)
# write a for-loop to store the results in s_n
```

`@solution`
```{r}
# Define a function and store it in `compute_s_n`
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}
# Create a vector for storing results
s_n <- vector("numeric", 25)
# Assign values to `n` and `s_n`
for(i in 1:25){
  s_n[i] <- compute_s_n(i)
}
```

`@sct`
```{r}
test_error()
test_object("compute_s_n", undefined_msg = "Make sure to define compute_s_n first.", incorrect_msg = "Are you assigning the correct values to x? ")
test_object("s_n", incorrect_msg = "You are getting the incorrect values. Check that you are calling the function correctly.")
test_function("vector")
fun_def <- ex() %>% check_fun_def("compute_s_n")
fun_def %>% check_arguments()
fun_def %>% check_call(10) %>% check_result() %>% check_equal()
fun_def %>% check_call(100) %>% check_result() %>% check_equal()
fun_def %>% check_call(1000) %>% check_result() %>% check_equal()
fun_def %>% check_body()
for_loop <- ex() %>% check_for()
# check condition ("i in 1:5" in the solution)
# note that check_code might be too stringent, since someone could
# create a variable, e.g. a <- 1:5, and give that to the for loop
for_loop %>% check_cond() 
#%>% check_code("in n", fixed = TRUE)
success_msg("This is great! You now know the basics of for loops in R.")
```

---
  
  ## Checking our math
  
  ```yaml
type: NormalExercise
key: 4e649b5400
lang: r
xp: 100
skills:
  - 1
```

If we do the math, we can show that 

$$S_n = 1^2 + 2^2 + 3^2 + \dots + n^2 =  n(n+1)(2n+1)/6 $$
  
  We have already computed the values of $S_n$ from 1 to 25 using a for loop. 

If the formula is correct then a plot of $S_n$ versus $n$ should look cubic.

Let's make this plot.

`@instructions`
- Define `n <- 1:25`. Note that with this we can use `for(i in n)`
- Use a for loop to save the sums into a vector `s_n <- vector("numeric", 25)`
- Plot `s_n` (on the y-axis) against `n` (on the x-axis).

`@hint`
In the plot code, `n` is the x-axis, and `s_n` is the y-axis.

`@pre_exercise_code`
```{r}
# no pec 
```

`@sample_code`
```{r}
# Define the function
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}
# Define the vector of n
n <- 1:25
# Define the vector to store data
s_n <- vector("numeric", 25)
for(i in n){
  s_n[i] <- compute_s_n(i)
}
#  Create the plot 
```

`@solution`
```{r}
# Define the function
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}
# Define the vector of n
n <- 1:25
# Define the vector to store data
s_n <- vector("numeric", 25)
for(i in n){
  s_n[i] <- compute_s_n(i)
}
#  Create the plot 
plot(n, s_n)
```

`@sct`
```{r}
test_error()
test_function("plot",args=c("x","y"), incorrect_msg = "Did you plot the x and y axis correctly?")
success_msg("Awesome! Let's go to the last exercise in this chapter!")
```

---

## Checking our math continued

```yaml
type: NormalExercise
key: 33ed29e3c1
lang: r
xp: 100
skills:
  - 1
```

Now let's actually check if we get the exact same answer.

`@instructions`
- Confirm that `s_n` and $n(n+1)(2n+1)/6$ are the same using the `identical` command.

`@hint`
`s_n` is a vector. Because `n` is a vector `n*(n+1)*(2*n+1)/6` is a vector. You can compare two vectors `x` and `y` with `identical(x, y)`.

`@pre_exercise_code`
```{r}
# no pec
```

`@sample_code`
```{r}
# Define the function
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}
# Define the vector of n
n <- 1:25
# Define the vector to store data
s_n <- vector("numeric", 25)
for(i in n){
  s_n[i] <- compute_s_n(i)
}
# Check that s_n is identical to the formula given in the instructions.
```

`@solution`
```{r}
# Define the function
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}
# Define the vector of n
n <- 1:25
# Define the vector to store data
s_n <- vector("numeric", 25)
for(i in n){
  s_n[i] <- compute_s_n(i)
}
# Check that s_n is identical to the formula given in the instructions.
identical(s_n, n*(n+1)*(2*n+1)/6)
```

`@sct`
```{r}
test_error()
test_function("identical")
test_output_contains("identical(s_n, n*(n+1)*(2*n+1)/6)", incorrect_msg = "Make sure you're checking your formula!")
success_msg("This is great! We are done with this module. Time to move on to bigger things!")
```

---

## End of Assessment 9

```yaml
type: PureMultipleChoiceExercise
key: 226fb8de61
lang: r
xp: 50
skills:
  - 1
```

This is the end of the programming assignment for this section. Please DO NOT click through to additional assessments from this page. Please DO answer the question on this page. If you do click through, your scores may NOT be recorded.

Click on "Awesome" to get the "points" for this question and then return to the course on edX.

You can now close this window to go back to the <a href='https://www.edx.org/course/data-science-r-basics-2'>course</a>.

`@hint`
- No hint necessary!

`@possible_answers`
- [Awesome]
- Nope

`@feedback`
- Great! Now navigate back to the course on edX!
- Now navigate back to the course on edX!