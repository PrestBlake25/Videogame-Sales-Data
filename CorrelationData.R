library(readr)
Game <- read_csv("vgsales.csv")
plot(Global_Sales ~ NA_Sales, data = Game, xlab = "North America Sales (in Millions)", ylab = "Global Sales (in Millions)", main = "North America Sales vs Global Sales", col = "red")

cor(Game$NA_Sales, Game$Global_Sales)
# the correlation coefficient is 0.9330727 which signals a strong positive correlation between the variables 