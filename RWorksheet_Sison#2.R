---
title: "CS101"
author: "Kathrina Casandra D. Sison BSIT - 2B"
---
  
---
#1
seq <- c(-5:5)
seq
--- 
  
---
#2
x<-1:7
x
---
  
---
#3
vec <- seq(1, 3, by = 0.2)
print(vec)
--- 
  
---
#4
ages <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35, 24, 33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26, 18)
---
  
third_element <- ages[3]
print(third_element)

second_and_fourth <- ages[c(2, 4)]
print(second_and_fourth)

result <- ages[-c(4, 12)]
print(result)

A.
x <- c("first" = 3, "second" = 0, "third" = 9)
result <- x[c("first", "third")]
print(result)

B.
x <- c("first" = 3, "second" = 0, "third" = 9)
names(x)

---
  
---
#5
x <- seq(-3, 2)
x[2] <- 0
x
---
  
---
#6
A.
month <- c("Jan", "Feb", "March", "Apr", "May", "June")
price_per_liter <- c(52.50, 57.25, 60.00, 65.00, 74.25, 54.00)
purchase_quantity <- c(25, 30, 40, 50, 10, 45)
diesel_data <- data.frame(month, price_per_liter, purchase_quantity)
print(diesel_data)
B.
expenditure <- price_per_liter * purchase_quantity
weighted_avg_expenditure <- weighted.mean(price_per_liter, purchase_quantity)
print(weighted_avg_expenditure)
---
  
---
#7
A.
data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), 
          var(rivers), sd(rivers), min(rivers), max(rivers))
names(data) <- c("Length", "Sum", "Mean", "Median", "Variance", "Standard Deviation", "Minimum", "Maximum")
print(data)
---
  
---
#8
A.
power_ranking <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25)
celebrity_name <- c("Tom Cruise", "Rolling Stones", "Oprah Winfrey", "U2","Tiger Woods", "Steven Spielberg", "Howard Stern", "50 Cent", 
                    "Cast of the Sopranos", "Dan Brown", "Bruce Springsteen", 
                    "Donald Trump", "Muhammad Ali", "Paul McCartney", "George Lucas","Elton John", "David Letterman", "Phil Mickelson", "J.K. Rowling", "Brad Pitt", "Peter Jackson", "Dr. Phil McGraw", "Jay Leno", "Celine Dion", "Kobe Bryant")
pay <- c(67, 90, 225, 110, 90, 332, 302, 41, 52, 88, 55, 44, 55, 40, 233, 34, 17, 47, 75, 20, 39, 45, 32, 40, 31) 
forbes_data <- data.frame(PowerRanking = power_ranking, CelebrityName = celebrity_name, Pay = pay)
forbes_data
B.
forbes_data[forbes_data$CelebrityName == "J.K. Rowling", "PowerRanking"] <- 15
forbes_data[forbes_data$CelebrityName == "J.K. Rowling", "Pay"] <- 90
forbes_data
C.
write.csv(forbes_data, file = "PowerRanking.csv", row.names = FALSE)
imported_data <- read.csv("PowerRanking.csv")
imported_data
D.
subset_data <- forbes_data[10:20, ]
save(subset_data, file = "Ranks.RData")
subset_data
---
  
---
#9
A.
install.packages ("readx]")
library(readxl)
file_path <- "C:/Users/Admin/Downloads/hotels-vienna.xlsx"
hotels_data <- read_excel(file_path)
hotels_data
B.
dataset_dimensions <- dim(hotels_data)
dataset_dimensions
C.
selected_data <- hotels_data[,c("country", "neighbourhood", "price" , "stars", "accommodation_type", "rating")]
selected_data
D.
save (selected_data, file = "new.RData")
E.
load("new.RData")
head(selected_data)
tail(selected_data)
---
  
---
#10
A.
vegetables <- c("potato", "carrot", "squash", "eggplant", "broccoli", "lettuce", "cabbage", "greenbean", "corn", "cucumber")
vegetables
B.
vegetables <-c(vegetables, "bell pepper", "long beans")
vegetables
C.
vegetables <- append(vegetables, c("asparagus", "cabbage", "spinach", "celery"), after = 5)
print(vegetables)
num_datapoints <- length(vegetables)
print(paste("Number of datapoints:", num_datapoints))
D.
vegetables <- vegetables[-c(5, 10, 15)]
print(vegetables)
num_vegetables_left <- length(vegetables)
print(paste("Number of vegetables left:", num_vegetables_left))
