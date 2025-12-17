library(readr)
Game <- read_csv("vgsales.csv")

# NOTE: The Review column does not exist in vgsales.csv
# Commenting out Review-related analysis
# hist(Game$Review, xlab = "Reviews", main = "Videogame Reviews", ylab = "Number Of Titles", col = "orange", border = "black")
# summary(Game$Review)
# mean(Game$Review, trim = 0.25)
# var(Game$Review)
# sd(Game$Review)
# # Creates a histogram for the Reviews column
# # Min = 30.5, 1st Quantile = 74, Median = 81, Mean = 79.04, 3rd Quantile = 86.23, Max = 97.00
# # Trimmed Mean(25%) 81.00
# # Variance 112.7186
# # Standard Deviation: 10.6169

hist(Game$NA_Sales, xlab = "Sale Numbers", ylab = "Number of Titles", main= "North America Sales", col="orange",border="black")
summary(Game$NA_Sales)
mean(Game$NA_Sales, trim = .25)
var(Game$NA_Sales)
sd(Game$NA_Sales)
# Creates a histogram for the NA_Sales Column
# Min = 0, 1st Quantile = 0.51, Median = 0.81, Mean = 1.259, 3rd Quantile = 1.375, Max = 40.43
# Trimmed Mean (25%) is around 0.85
# Variance is 3.828127
# Standard Deviation is 1.95656

