rawdata <- read.csv("/Users/Philipp/Desktop/R_codes/Datasets/NBSC-returnedstudent.csv")

hist(rawdata$Value, main = "Returned Students in China", xlab = "Date", ylab = "Value")

boxplot(rawdata$Value~rawdata$Date, main = "Returned Students in China", xlab = "Date", ylab = "Value")
