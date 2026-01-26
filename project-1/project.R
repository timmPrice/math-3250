# SETUP

gdp <- read.csv("./gdp.csv", header = TRUE, sep = ",", fill = TRUE)

# Q1 A -> calculate per-capita gdp

gdp$PERCAPGDP <- gdp$X2015Q2 / gdp$X2015pop

# Q1 B -> write per-capita gdp to a new file "gdp1.csv"

write.table(x=gdp, file = "./gdp1.csv", sep = ",", row.names = F)
print(gdp)

# Q2 -> calculate total sum of state gdps

gdp_total <- sum(gdp$X2015Q2, na.rm = TRUE)
print(gdp_total)

# Q3 -> filter states with gdp over 500000
# gdp over 500,000
ff <- gdp[gdp$`X2015Q2` >= 500000, ]
print(ff)

# Q4 -> number of states with gdp over 500000
num_states_ff <- nrow(ff)
print(num_states_ff)

# Q5 -> 
avg_gdp <- gdp_total/ 50
print(avg_gdp)

# Q6 -> state - avg gdp
gdp$DIFFGPD <- gdp$X2015Q2 - avg_gdp

# Q6 B -> append new file
write.table(x=gdp, file = "./gdp2.csv", sep = ",", row.names = F)

# Q7 -> number of states above average

greater_avg <- nrow(gdp[gdp$DIFFGPD > 0, ])
greater_avg

# Q8 -> randomly sample 10 states

sample <- gdp[sample(nrow(gdp), size = 10), ]
print(sample)

# Q9 -> list out the states sampled
print(sample$state)


