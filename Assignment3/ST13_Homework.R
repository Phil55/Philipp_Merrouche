head(mtcars)

bad <- kmeans(mtcars, centers=2)
  
plot(mtcars$mpg, mtcars$hp, col=bad$cluster, pch=16, cex=2, xlab="MPG", ylab="Horsepower")


cars_norm <- scale(mtcars)
d <- dist(cars_norm, method="euclidean")
hc <- hclust(d, method="complete")
plot(hc)
cutree()

install.packages("klaR")
install.packages("caret")
install.packages("class")
install.packages("e1071")

pairs(iris[1:4], main="iris Data")

data(iris)
summary(iris)

#load iris data
x = iris[, -5]
y = iris$Species

#predict 5th coumn with first four columns
classifier <- naiveBayes(iris[,1:4], iris[,5])
table(predict(classifier, iris[,-5]), iris[,5])

model = train(x,y, "nb", trControl=trainControl(method="cv", number=10))

predict(model$finalModel,x)

#---------------------------------------------

install.packages("ElemStatLearn")
library("ElemStatLearn")

sub= sample(nrow(spam), floor(nrow(spam) * 0.9))
train = spam[sub,]
test = spam[-sub,]

xTrain = train[,-58]
yTrain = train$spam

xTest = test[,-58]
yTest = test$spam

model = train(xTrain, yTrain, "nb", trControl=trainControl(method="cv", number=10))

prop.table(table(predict(model$finalModel, xTest)$class,yTest))

#-------------------------------------------------------------

studdata <- read.csv("/Users/Philipp/Desktop/SurveyResultnew.csv")

nat <- studdata$Living
from <- studdata$Q6

plot(from, nat)

ye.model <- lm(nat~from, data=studdata)
studdata$pred <- predict(ye.model, studdata)
points(from, studdata$pred, col="blue", pch=16)

newstuddata <- data.frame(from)
newstuddata$pred <- predict(ye.model, newstuddata)
points(newstuddata$from, newstuddata$pred, col="green")
points(newstuddata$from, newstuddata$pred, col="green", pch=3)



