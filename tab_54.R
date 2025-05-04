library(caret)
set.seed(123)

# Membagi data menjadi training dan testing
inTrain <- createDataPartition(iris$Species, p = 0.7, list = FALSE)
trainData <- iris[inTrain, ]
testData <- iris[-inTrain, ]

# Melatih model Decision Tree
model <- train(Species ~ ., data = trainData, method = "rpart")

# Melakukan prediksi
pred <- predict(model, newdata = testData)

# Membuat confusion matrix
conf_mat <- confusionMatrix(pred, testData$Species)
print(conf_mat$table)
