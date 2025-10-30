library(readr)
Game <- read_csv("Video Games Sales.csv")
View(Game)
plot(Global ~ `North America`, data = Game, xlab = "North America Sales (in Millions)", ylab = "Global Sales (in Millions)", main = "North America Sales vs Global Sales", col = "red")

cor(Game$'North America', Game$Global)
# the correlation coefficient is 0.9330727 which signals a strong positive correlation between the variables 