library(readr)
Game <- read_csv("Video Games Sales.csv")
View(Game)

# Computing the 95% Confidence Interval of North America Column 
mean(Game$`North America`)
meanNorth = mean(Game$`North America`)
sdNorth = sd(Game$`North America`)
n = 1907
error = sdNorth/sqrt(1907)
lower_bound = meanNorth - (abs(qnorm(0.05/2)) * error)
upper_bound = meanNorth + (abs(qnorm(0.05/2)) * error)

# Computing the 95% Confidence Interval of Review Column
meanReview = mean(Game$Review)
sdReview = sd(Game$Review)
error = sdReview/sqrt(n)
lower_bound = meanReview - (abs(qnorm(0.05/2)) * error)
upper_bound = meanReview + (abs(qnorm(0.05/2)) * error)
