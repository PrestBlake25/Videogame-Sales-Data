library(readr)
Game <- read_csv("vgsales.csv")

# NOTE: The Review column does not exist in vgsales.csv
# Commenting out Review-related regression analysis
# If you have a dataset with Review scores, update the CSV file accordingly
# global_sales_rev_model = lm(Review ~ Global_Sales, data = Game)
# summary(global_sales_rev_model)
# plot(Game$Review, resid(global_sales_rev_model), xlab = "Observed Values", ylab = "Residuals", main = "Observed vs Residuals")
# abline(h = 0, col = "orange", lty = 2)
# hist(resid(global_sales_rev_model), main = "Histogram of Residuals", xlab = "Residuals")
