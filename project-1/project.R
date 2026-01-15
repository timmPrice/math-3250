# SETUP

gdp <- read.csv("./gdp.csv", header = TRUE, sep = ",", fill = TRUE)


# Q1 A 

gdp$PERCAPGDP <-gdp$X2015Q2 / gdp$X2015pop

# Q1 B 

write.table(x=gdp, file = "./gdp1.csv", sep = "!", row.names = F)

# Q2





gdp