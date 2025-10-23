library(readr)
Game <- read_csv("Video Games Sales.csv")
View(Game)
count_gen <- table(Game$Genre)
Game_Gen_GTS_100 <- subset(Game, Genre %in% names(count_gen[count_gen > 100]))
barplot(table(Game_Gen_GTS_100$Genre), xlab = "Genres", ylab = "Titles", main = "Top Game Genres", col = "red", border = "yellow")
# Creates a bar plot with the Top Genres that have over 100 titles

count_plat <- table(Game$Platform)
Platform_GTS_100 <- subset(Game, Platform %in% names(count_plat[count_plat > 100]))
barplot(table(Platform_GTS_100$Platform), xlab = "Console", ylab = "Titles", main = "Top Platforms for Gaming", col = "red", border = "yellow")
# Creates a bar plot with the Top Platforms that have over 100 games 

PS2_games = subset(Game, Platform == "PS2")
PS2_Games_GTS_40 <- subset(PS2_games, Genre %in% names(count_PS2_games[count_PS2_games > 40]))
barplot(table(PS2_Games_GTS_40$Genre), xlab = "Genres", ylab = "Titles", main = "Top PS2 Game Genres", col = "red", border = "yellow")
# Creates a barplot with the top Genres of PS2 games 
