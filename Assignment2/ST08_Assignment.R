# Example Konfidenzintervall
pnorm(2)-pnorm(-2)

# Example t-test
Control = c(91, 87, 99, 77, 88, 91)
Treat = c(101, 110, 103, 93, 99, 104)

t.test(Control, Treat, alternative="less", var.equal=TRUE)

# Assigment 2
# 1.
scores = c(90,95,89,71,73,96,87,95,107,89,96,80,97,95,102,97,93,101,82,83,74,91,83,98,95,
        111,99,120,93,84)
n <- length(scores)

sd <- sd(scores)

t <- 2.042

# a)
meanscore = mean(scores)

# b) it depends how large the population is. But generaly it needs more samples to have a likely to equal estimate 

# c)
se <- sd/sqrt(n)

# d) That the sample mean can vary 1.9 from the population mean

# e) confidence interval: 88.1 - 96.2
xplus <- meanscore + t*se
xminus <- meanscore - t*se

#or
t.test(scores)

# f) the samples can represent 95% of the population, because the sample mean is between the confidence interval.

# 2. no we can not reject the 0 hypthesis (p-value = 0.5405)
male = c(220.1,218.6,229.6,228.8,222.0,224.1,226.5)
female = c(223.4,221.5,230.2,224.3,223.8,230.8)

t.test(male, female)

# 3.
# a) false, p-value says nothing about hte size of the effect

# b) true,

# c) false, in this case alpha was set to 0.5

# d) false, this is not correct. We cannot derive the Type 2 error from the test. 

# e) true,

#4. we can not reject the hypothesis
persa <- c(248,236,269,254,249,251,260,245,239,255)
persb <- c(380,391,377,392,398,374)

t.test(persa,persb)

#5. the more samples you have, the standard deviation comes closer to the population mean. 
# SE shows how close the sampling mean to population mean.



