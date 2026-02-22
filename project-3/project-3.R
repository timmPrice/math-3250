# setup (read data set)

# setup

lac_sal <- read.csv("./bellemployeesalaries.csv" )
bell <- subset(lac_sal, cityName == "Bell")
duarte <- subset(lac_sal, cityName == "Duarte")

# total_row <- nrow(lac_sal)
# if (nrow(bell) + nrow(duarte) != total_row) {
#   print("subsets did not work")
# } else {
#   print("subsets worked")
# }

bell 
duarte

# 1.
fint = seq(0, max(bell$wages) + 50000, by = 50000)

png(filename = "wages-hist.png", width = 500, height = 500, units = "px")

hist(bell$wages, 
     breaks = fint,
     main = "Distribution of city wages.",  
     xlab = "wages", 
     ylab = "frequency", 
)

dev.off()

# 4.
duarte_mean <- mean(duarte$wages)
duarte_median <- median(duarte$wages)
duarte_sd <- sd(duarte$wages)

duarte_mean
duarte_median
duarte_sd





