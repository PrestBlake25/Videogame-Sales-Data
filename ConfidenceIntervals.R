library(readr)
Game <- read_csv("vgsales.csv")

# Computing the 95% Confidence Interval of NA_Sales Column 
meanNorth = mean(Game$NA_Sales)
sdNorth = sd(Game$NA_Sales)
n = nrow(Game)  # Use dynamic sample size instead of hardcoded value
error = sdNorth/sqrt(n)
lower_bound_north = meanNorth - (abs(qnorm(0.05/2)) * error)
upper_bound_north = meanNorth + (abs(qnorm(0.05/2)) * error)

# Computing the 95% Confidence Interval of Global_Sales Column
meanGlobal = mean(Game$Global_Sales)
sdGlobal = sd(Game$Global_Sales)
error = sdGlobal/sqrt(n)
lower_bound_global = meanGlobal - (abs(qnorm(0.05/2)) * error)
upper_bound_global = meanGlobal + (abs(qnorm(0.05/2)) * error)
