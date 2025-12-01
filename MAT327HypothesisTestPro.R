col_NA_data <- c(0.01, 0.32, 0.0, 0.01, 0.2, 1.19, 0.18, 0.56, 0.17, 0.0)
mean_NA_data <- mean(col_NA_data)
mean_NA_data
sd(col_NA_data)
(mean_NA_data-1.26)/(sd(col_NA_data)/sqrt(10))
# Computing A Hypothesis Test for the mean of the North American Sales Column


s_Global_data = c(0.15, 0.4, 0.02, 0.03, 0.36, 2.24, 0.39, 0.65, 0.21, 0.44)
mean_sam_gl_data <- mean(s_Global_data)
test_st <- (mean_sam_gl_data-0.537)/(sd(s_Global_data)/sqrt(10))
# Computing A Hypothesis Test for the mean of the Global Sales Column
