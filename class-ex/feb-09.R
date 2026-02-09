# Calculate STD-DEV, MEAN, MEADIAN, MODE, COEF-VAR, ETC.
# Class Lab 2026-02-09

xdata <- c(2, 4.4, 3, 3, 2, 2.2, 2, 4)
quantile(xdata, prob=0.8) # find 80th percentile of xdata

quantile(xdata, prob=c(0, 0.25, 0.5, 0.75, 1)) # find list of percentiles from table of values.

summary(xdata)

x.bar <- mean(xdata) 
m.bar <- median(xdata) 
xtab <- table(xdata) # manual mode calc
d.bar <- xtab[xtab == max(xtab)] # mode column
rv <- range(xdata)

x.bar; m.bar; xtab; d.bar; rv
