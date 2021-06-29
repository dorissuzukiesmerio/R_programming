# Avoid overfitting:
# fitting then bad performance 
# install.packages("e1071")
library(e1071)

#Data Partition
set.seed(123)
ind1 <- createDataPartition(y=iris$Species, p=0.6, list=F) #p=0.6 : 60% for training
training <- iris[ind1,]
testing <- iris[-ind1,]
head(ind1, 10)

#caveat: skewed data

#K-Fold : cross-validation  
fitControl <- trainControl(method="cv",number=10)
model <- train(Species~., data=training,
               trControl =fitControl, method="lda") #. is everything
print(model)
predict1 <- predict(model, testing)
print(predict1)

#Using airquality data instead of iris
set.seed(123)
ind2 <- createDataPartition(y=DataImputeBag$Ozone, p=0.6, list=F)
training1 <- DataImputeBag[ind2,]
testing1 <- DataImputeBag[-ind2,]

fitControl1 <- trainControl(method="cv",number=10)
model1 <- train(Ozone~Solar.R+Wind+Temp,data=training1,
                trControl = fitControl1,method="lm")
print(model1)
predict_iris <- predict(model1,testing1)
print(predict_iris)

#Metrics:
cor(predict1, testing1$Ozone) #correlation
cor.test(predict1, testing1$Ozone) #confidence Interval too
postResample(predict1,testing1$Ozone)
confusionMatrix(predict_iris, testing$Species)

#Evaluation metrics:
#R and R_quared
cor(prediction,testing)
cor.test(prediction,testing)

