data <- read.csv("./body.csv", sep = ",")
data

# 1.a

and_girth <- with(data,
            (WristMinGirth >= 15 & WristMinGirth <= 21) & 
            (AnkleMinGirth >= 15 & AnkleMinGirth <= 21) & 
            (BicepGirth    >= 15 & BicepGirth    <= 21))

probability <- mean(and_girth, na.rm = TRUE)
round(probability, 4)

# 1.b

or_girth <- with(data,
            (WristMinGirth >= 15 & WristMinGirth <= 21) | 
            (AnkleMinGirth >= 15 & AnkleMinGirth <= 21) | 
            (BicepGirth    >= 15 & BicepGirth    <= 21))

probability <- mean(or_girth, na.rm = TRUE)
round(probability, 4)

# 1.c

wrist_and <- with(data,
                  (WristMinGirth >= 15 & WristMinGirth <= 21) &  
                  ((AnkleMinGirth >= 15 & AnkleMinGirth <= 21) | (BicepGirth >= 15 & BicepGirth <= 21))) 

probability <- mean(wrist_and)
round(probability, 4)

# 2.a

and_girth <- with(data,
            (WristMinGirth >= 15 & WristMinGirth <= 19) & 
            (AnkleMinGirth >= 15 & AnkleMinGirth <= 19) & 
            (BicepGirth    >= 15 & BicepGirth    <= 19) &
            (WristMinGirth >= 22 & WristMinGirth <= 32) & 
            (AnkleMinGirth >= 22 & AnkleMinGirth <= 32) & 
            (BicepGirth    >= 22 & BicepGirth    <= 32))

probability <- mean(and_girth, na.rm = TRUE)
round(probability, 4)

# 2.b

wrist_and <- with(data,
                  ((WristMinGirth >= 15 & WristMinGirth <= 19) | (WristMinGirth >= 22 & WristMinGirth <= 32)) &  
                  ((AnkleMinGirth >= 15 & AnkleMinGirth <= 21) |
                   (BicepGirth >= 15 & BicepGirth <= 21) |
                   ((AnkleMinGirth >= 22 & AnkleMinGirth <= 32) |
                   (BicepGirth >= 22 & BicepGirth <= 32))))

probability <- mean(wrist_and)
round(probability, 4)

# 2.c

or_girth<- with(data,
            (WristMinGirth >= 15 & WristMinGirth <= 19) | 
            (AnkleMinGirth >= 15 & AnkleMinGirth <= 19) | 
            (BicepGirth    >= 15 & BicepGirth    <= 19) |
            (WristMinGirth >= 22 & WristMinGirth <= 32) | 
            (AnkleMinGirth >= 22 & AnkleMinGirth <= 32) | 
            (BicepGirth    >= 22 & BicepGirth    <= 32))

probability <- mean(or_girth, na.rm = TRUE)
round(probability, 4)

# 3.a

female <- with(data, 
            (gender = 0) &
            ((WristMinGirth >= 14 & WristMinGirth >= 17) | ((WristMinGirth >= 20 & WristMinGirth >= 28))) &
            (((AnkleMinGirth>= 14 & AnkleMinGirth >= 17) | ((AnkleMinGirth >= 20 & AnkleMinGirth>= 28))) |
            ((BicepGirth >= 14 & BicepGirth >= 17) | ((BicepGirth >= 20 & BicepGirth>= 28)))))

probability <- mean(female, na.rm = TRUE)
round(probability, 4)

# 3.b

male <- with(data, 
            (gender = 1) &
            ((WristMinGirth >= 15 & WristMinGirth >= 19) | ((WristMinGirth >= 22 & WristMinGirth >= 36))) &
            (((AnkleMinGirth>= 15 & AnkleMinGirth >= 19) | ((AnkleMinGirth >= 22 & AnkleMinGirth>= 36))) |
            ((BicepGirth >= 15 & BicepGirth >= 19) | ((BicepGirth >= 22 & BicepGirth>= 36)))))

probability <- mean(male, na.rm = TRUE)
round(probability, 4)
