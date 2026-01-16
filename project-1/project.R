# SETUP

gdp <- read.csv("./gdp.csv", header = TRUE, sep = ",", fill = TRUE)

# Q1 A

gdp$PERCAPGDP <- gdp$X2015Q2 / gdp$X2015pop

# Q1 B

write.table(x=gdp, file = "./gdp1.csv", sep = "!", row.names = F)
print(gdp)

# Q2

gdp_total <- sum(gdp$X2016Q2, na.rm = TRUE)
print(gdp_total)

# Q3
# gdp over 500,000
ff <- gdp[gdp$`X2015Q2` >= 500000, ]
print(ff)

