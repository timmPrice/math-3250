file <- read.csv(file = "uscensuspopbytract.csv")

mu <- mean(file$POP100)
sigma <- sd(file$POP100)

sigma; mu

critical_value <- 1.96

n <- ceiling(((critical_value * sigma) / 110)^2)

n

set.seed(400 * 20 + 16) # make values reproducable

for (i in 1:10) {
    sample <- sample(file$POP100, size = n, replace = FALSE)
    avg <- round(mean(sample), 4)
    margin <- critical_value * (sigma / sqrt(n)) 
    lower <- avg - margin
    upper <- avg + margin
    print(paste(i, round(lower, 2), "<", round(mu, 4), "<", round(upper, 2)))
}

# testing confidence interval for 5
total = 0
for (i in 1:30000) {
    sample <- sample(file$POP100, size = n, replace = FALSE)
    avg <- round(mean(sample), 4)
    margin <- critical_value * (sigma / sqrt(n)) 
    lower <- avg - margin
    upper <- avg + margin
    if (mu < upper && mu > lower) {
        total <- total + 1
    }
}

(total / 30000) * 100 # interval percentage


