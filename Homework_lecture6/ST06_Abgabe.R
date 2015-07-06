# number of dice rolls
d = 10000

# Value of the first random dice
x1 <- sample(1:6, d, replace=TRUE)

# Value of the second random dice
x2 <- sample(1:6, d, replace=TRUE)

#sum of both dice
dice_roll <- x1 + x2

# create a histogram of the result (frec=true, absolute Zahlen)
hist(dice_roll)

# change the histogram
hist(dice_roll, freq=FALSE)

# Cumulative Distribution
C = ecdf(dice_roll)
C(0.0)
plot(C)

#normal distribution
nv <- rnorm(10000, mean=5, sd=10)
hist(nv)

#Prozentzahl von einem gegebenem Wert
z <- pnorm(70.9, mean=70, sd=5)

