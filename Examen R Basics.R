library(dslabs)
data(heights)

sum(ifelse(heights$sex == "Female", 1, 2))

mean(ifelse(heights$height > 72, heights$height, 0))

inches_to_ft <- function(x){x/12}
inches_to_ft(144)

sum(inches_to_ft(heights$height) < 5)

#The any() function is true if any of its elements are true. The all() function is true if all of its elements are true.