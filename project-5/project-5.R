# setup

casino <- read.csv("./casino.csv", sep = ",")
spins <- table(casino$spinOutcome)

# problem 1: done in write up

# 2.a

png(filename = "bar_graph.png", width = "500", height = "500", units = "px")
barplot(height = spins, main = "Frequency of Spin Outcomes", xlab = "Outcome", ylab = "Frequency", las = 2, cex.names = "0.8", ylim = c(0, 200))
dev.off()

# 2.b.

top_3 <- sort(spins, decreasing = TRUE)[1:3]
top_3

# 2.c.

prob_three <- round((top_3 / nrow(casino)), 5)
prob_three

# expected probability
expected <- round((1 / 37), 5)

# 3.a

table_probabilities <- round(dbinom(x = (0:36), size = 36, prob = (1/37)), 4)
table_probabilities

win_payout <- round(((0:36) * 36) - 36)
win_payout

# data table of values.
data.frame((0:36), table_probabilities, win_payout)

#3.d - updated table in writeup

tisch_probabilities <- round(dbinom(x = (0:36), size = 36, prob = 0.03776), 4)
tisch_probabilities

# 3.e
tisch_profit <- 1 - sum(tisch_probabilities[0:2])
tisch_profit
