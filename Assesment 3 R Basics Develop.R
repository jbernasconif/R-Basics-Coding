library(dslabs)
data(heights)
options(digits = 3)

ind <- heights$height > mean(heights$height)
sum(ind)

ind <- heights$height > mean(heights$height) & heights$sex == "Female"
sum(ind)
#es lo mismo que esto
sum(ind & heights$sex=="Female")

mean(heights$sex == "Female")

min(heights$height)

ind <- match(c(50), heights$height)
ind
match(50,heights$height)

max(heights$height)

x <- c(heights$height, 50:82)

sum(!(x %in% heights$height))

heights2 <- mutate(heights, ht_cm = height*2.54)
heights2$ht_cm[18]

mean(heights2$ht_cm)

females <- filter(heights2, sex == "Female")
nrow(females)

mean(females$ht_cm)

plot(olive$palmitic, olive$palmitoleic)

hist(olive$eicosenoic)

boxplot(palmitic ~ region, data = olive)