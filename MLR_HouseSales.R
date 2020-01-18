#multiple linear regression

setwd("C:/Users/Alexander/OneDrive - National College of Ireland/4th Year/Semester 2/Advanced Business Analysis/samples/Multiple Linear Regression")
df <- read.csv("HouseSales.csv", sep = ",", header = TRUE)

names(df)

#correlation matrix 
cor(df)

#compare - graph
#graph shows there is no correlation beteen Years in business and level of education. This is the correct ouput
pairs(df)

#run model
#lm(what we want to predict ~ first independent variable + second independent variable, data = data name)
#output same as SPSS - see notes
Model <- lm(Number.of.Homes.Sold ~ Years.in.Business + Level.of.Education, data = df)
Model

#more detail -output given on exam 
summary(Model)

#Multiple R-Squared - 0.747. (75% accurate) - coefficient of determination - measure of the strength of your model












