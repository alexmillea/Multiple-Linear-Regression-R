#tutorial - multiple linear regression

setwd("C:/Users/Alexander/OneDrive - National College of Ireland/4th Year/Semester 2/Advanced Business Analysis/samples/Multiple Linear Regression")
df <- read.csv("LuxuryCars.csv", sep = ",", header = TRUE)


#price, age, milage
df <- df[c(-1, -2, -6, -7, -8, -9)]

#correlation matrix 
cor(df)

#compare - graph
pairs(df)

#run model
#lm(what we want to predict ~ first independent variable + second independent variable, data = data name)
Model <- lm(Price ~ Age + Mileage, data = df)
Model

#more detail -output given on exam 
summary(Model)