mydatafile <- read.table("./section-1-datasets/mydatafile.txt", header = TRUE, sep="", na.strings = "*", stringsAsFactors = FALSE)
mydatafile

spreadsheetfile <- read.csv("./section-1-datasets/spreadsheetfile.csv", header = TRUE, stringsAsFactors = TRUE)
spreadsheetfile

write.table(x=quakes[quakes$mag >= 5, ], file = "./section-1-datasets/q5.txt", sep = "!", row.names = F)
q5.dframe <- read.table(file = "./section-1-datasets/q5.txt", sep = "!", header = T)

# mydatafile$age.mon <- mydatafile$age*12
# mydatafile
print(mydatafile$person)


data <- read.csv("./section-1-datasets/mysdata.csv", header = TRUE, stringsAsFactors = TRUE)
data

XPlusY <- data$X + data$Y
YMinusX <- data$X - data$Y

updatedData <- cbind(data, XPlusY)
updatedData <- cbind(updatedData, YMinusX)

updatedData

