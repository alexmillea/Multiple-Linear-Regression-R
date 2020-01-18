#multiple linear regression - insurance example

setwd("C:/Users/Alexander/OneDrive - National College of Ireland/4th Year/Semester 2/Advanced Business Analysis/samples/Multiple Linear Regression")
insurance <- read.csv("insurance.csv", sep = ",",, header = TRUE)

names(insurance) #column names
cor(insurance) #run correlation - will give error
cor(insurance[c("age", "bmi", "children", "charges")]) # re-run correlation - string columns removed
pairs(insurance[c("age", "bmi", "children", "charges")]) #visualisation

#create model
insuranceModel <- lm(charges ~ age + sex + bmi + children + smoker + region, data = insurance)

#display regression coefficients 
insuranceModel
summary(insuranceModel)

#check residuals
insurance = rstandard(insuranceModel)
plot(insurance.stdRes, col ="red")
abline(0,0)









