# Building the linear regression model
library(caTools)

sample <- sample.split(bikes$temp, SplitRatio = 0.7)

# Test Set
bikesTest <- subset(bikes, sample == F)

# Train Set
bikesTrain <- subset(bikes, sample == T)

# Getting the Linear Regression Model
temp.model <- lm(count ~ temp, bikes)

# Predicting a simple output
temp.test <- data.frame(temp=c(25))
predict(temp.model,temp.test)

# honing the model
bikes$hour <- sapply(bikes$hour,as.numeric)

model <- lm(count ~ . -casual - registered -datetime -atemp, bikes)