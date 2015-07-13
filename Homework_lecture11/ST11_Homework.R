library(ggplot2)

studentdata <- read.csv("/Users/Philipp/Desktop/SurveyResultnew.csv")

income <- c(studentdata$Q5)

qplot(income, data=studentdata, geom="bar")


