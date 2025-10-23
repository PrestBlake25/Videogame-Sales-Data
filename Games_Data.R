library(readr)
Game <- read_csv("Video Games Sales.csv")
View(Game)
hist(Game$Year, xlab = "Release Years", main="Game Releases", col = "blue", border = "yellow")
#Creates a histogram of the years the games released

barplot(table(Game$Genre), xlab = "Genres", ylab = "Frequency", main = "Genres of Games", col = "blue", border = "yellow")
#Creates a bar chart with the Games' genre

barplot(table(Game$Platform), xlab = "Genres", ylab = "Frequency", main = "Platforms for Gaming", col = "blue", border = "yellow")
#Creates a barchart listing the Games' different platforms

hist(Game$Global, xlab = "Game Sales Sold (in millions)", main = " Global Video Game Sales", col = "blue" , border = "yellow")
# Makes a histogram demonstrating the global sales  

Game_Sales_lt_8 <- subset(Game, Global < 8)
hist(Game_Sales_lt_8$Global, xlab = "Game Sales Sold (in millions)", main = " Global Video Game Sales", col = "blue" , border = "yellow")
#Makes a histogram demonstrating global sales that made less 8 million dollars in profit
