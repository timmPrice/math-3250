# setup

data <- read.csv("./hintsdata.csv", sep = ",")
print(data)

# 1. 
max_age <- max(data$Age)

png("AgeH.png", width = 500, height = 600, res = 100)
print(max_age)
hist(data$Age, breaks = seq(0, max_age+5, by = 10), main = "histogram of age data in 10-year intervals", xlab = "age", col = "orange", border = "black" )

# 2. 
gen_health <- table(data$GeneralHealth)

png("GeneralHealthPC.png", width = 500, height = 600, res = 100)
pie(gen_health, main = "General Health Percentages")

dev.off()

# 3.
good_health <- c("Excellent", "Very Good", "Good")
poor_health <- c("Fair", "Poor")


