library(readr)
Game <- read_csv("vgsales.csv")

# Cache table() results to avoid recalculation
count_gen <- table(Game$Genre)
Game_Gen_GTS_100 <- subset(Game, Genre %in% names(count_gen[count_gen > 100]))
table_gen_100 <- table(Game_Gen_GTS_100$Genre)
barplot(table_gen_100, xlab = "Genres", ylab = "Titles", main = "Top Game Genres", col = "red", border = "yellow")
# Creates a bar plot with the Top Genres that have over 100 titles

count_plat <- table(Game$Platform)
Platform_GTS_100 <- subset(Game, Platform %in% names(count_plat[count_plat > 100]))
table_plat_100 <- table(Platform_GTS_100$Platform)
barplot(table_plat_100, xlab = "Console", ylab = "Titles", main = "Top Platforms for Gaming", col = "red", border = "yellow")
# Creates a bar plot with the Top Platforms that have over 100 games 

PS2_games = subset(Game, Platform == "PS2")
count_PS2_games <- table(PS2_games$Genre)
PS2_Games_GTS_40 <- subset(PS2_games, Genre %in% names(count_PS2_games[count_PS2_games > 40]))
table_PS2_40 <- table(PS2_Games_GTS_40$Genre)
barplot(table_PS2_40, xlab = "Genres", ylab = "Titles", main = "Top PS2 Game Genres", col = "red", border = "yellow")
# Creates a barplot with the top Genres of PS2 games 
