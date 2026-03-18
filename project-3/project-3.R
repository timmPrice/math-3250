# setup (read data set)

# setup

lac_sal <- read.csv("./bellemployeesalaries.csv" )
bell <- subset(lac_sal, cityName == "Bell")
duarte <- subset(lac_sal, cityName == "Duarte")

# total_row <- nrow(lac_sal)
# if (nrow(bell) + nrow(duarte) == total_row) {
#   print("subsets work")
# } 

bell
duarte

max(duarte$wages)
max(bell$wages)

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

# 4.a 

duarte_mean <- mean(duarte$wages)
duarte_median <- median(duarte$wages)
duarte_sd <- sd(duarte$wages)

duarte_mean
duarte_median
duarte_sd

# 4.b. values in bell for comparison

bell_mean <- mean(bell$wages)
bell_median <- median(bell$wages)
bell_sd <- sd(bell$wages)

bell_mean
bell_median
bell_sd

# 4.c. police officer average salary
mean(subset(bell, position == "Police Officer")$wages)

#5. 

bell_sd_hs <- (max(bell$wages) - bell_mean ) / bell_sd
duarte_sd_hs <- (max(duarte$wages) - duarte_mean) / duarte_sd 

round(bell_sd_hs, 4)
round(duarte_sd_hs, 4)







