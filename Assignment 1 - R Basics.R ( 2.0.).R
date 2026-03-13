#set working directory[Green ltter = code ignore]
setwd("~/Documents/ECON 203") #folder to read from 
install.packages("readxl")
library(readxl)
HW_1 <- read_excel("HW 1.xls")
View(HW_1)
read_xls("HW1.xls") #document name with folder 
#view() = view the data within the document 
# equall(==),plus(+),minus(-),times(*)
pnorm(72,66,4,FALSE) 
x <- c(2,2)
y <- c(2,6)
x + y
m <- c(5,10)
n <- c(2,3,4)
m + n
m*n
p <- c(2,3,1,62,3,2)
sum(p==2)
a <- c(10,5,2,6,3)
b <- c(3,1,NA,4,0)
a/b
plot(x,y)
HW_1$price
HW_1$sqrft
x <- HW_1$sqrft
y <-HW_1$price
plot(x,y)
z <- HW_1$assess
plot(y,z)
mean(z > y) > .5
mean(y) < median(y)
round(var(x,na.rm = FALSE))
b <- HW_1$bdrms
mean(y)
(mean(z, na.rm = TRUE))*1000
c <- HW_1$colonial
sum(c)
sum(b > 4)



