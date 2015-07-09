#2.
mfirst = c(20,32,35,34,40,51,52,56,57,68)
msecond = c(23,34,36,44,42,51,54,57,54,62)

# a)
t.test(mfirst, msecond)

# b) Both are very similar. the second visit is positive. its strong and linear
hist(mfirst)
hist(msecond)

# c)
c <- cor(mfirst, msecond)

# d) 
se <- sqrt((1-c^2)/(length(mfirst)-2)) # Standardfehler berechnen ohne mean

# e) confidence interval = -13.83 - 11.43

# 3.
msecond2 = c(53,64,66,74,72,81,84,87,84,92)
mfirst2 = c(2000,3200,3500,3400,4000,5100,5200,5600,5700,6800)

# a) the correlation coefficient does not change. Now the relationship is very different.
t.test(mfirst, msecond2)
c2 <- cor(mfirst, msecond2)
cor.test(mfirst, msecond2)

# b) the correlation coefficient does not change. Now the relationship is very different.
t.test(mfirst2, msecond2)
c3 <- cor(mfirst2, msecond2)

# 4.
range = c(-1.3,-0.5,-0.3,0.2,0.1,0.5,1.0,0.3,0.4,0.5,0.1,0.2,0.4,1.3,1.2,1.4,1.6,1.6,1.8,3.1)
mort = c(4,22,0,0,11,13,17,25,24,27,29,33,33,42,33,20,19,19,25,65)

# a) the trend is, that the higher the range is, the higher is the percentage of infant mortality
all <- cbind(range, mort)

plot(all)

# b)

m <- lm(mort~range)
abline(m)

# c)
summary(m)
a <- m$coefficients[1]
b <- m$coefficients[2]

# d)
range2 = c(-1.3,-0.5,-0.3,0.2,0.1,0.5,1.0,0.3,0.4,0.5,0.1,0.2,0.4,1.3,1.2,1.4,1.6,1.6,1.8)
mort2 = c(4,22,0,0,11,13,17,25,24,27,29,33,33,42,33,20,19,19,25)

m2 <- lm(mort2~range2)
abline(m2)

summary(m2)
a2 <- m2$coefficients[1]
b2 <- m2$coefficients[2]



