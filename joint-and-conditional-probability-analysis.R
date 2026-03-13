setwd("~/Documents/ECON 203")  
install.packages("readxl")
library(readxl)
HW_1 <- read_excel("HW 1.xls")
View(HW_1)
help("nrow")
#11.What is the probability that a house has at least four bedrooms and sells for at least $300,000? Round your answer to 3 decimal places.
sum(HW_1$bdrms>=4&HW_1$price>=300)/nrow(HW_1)#11
#12.What is the probability that a house's selling price is at least $200,000 and at most $300,000? Round your answer to 3 decimal places.
round(sum(HW_1$price>=200&HW_1$price<=300)/nrow(HW_1),3)#12
round(sum(HW_1$bdrms==4&HW_1$price>250&HW_1$sqrft>=2014)/sum(HW_1$sqrft>=2014),3)#12
#13.What is the probability that a house that is assessed for at least $200,000 is sold for at least $200,000? Round your answer to 3 decimal places.
round(sum(HW_1$price>=200&HW_1$assess>=200)/sum(HW_1$assess>=200),3)#13
#14.The mean number of square-footage for homes in the housing data set is 2,014 sq ft. What is the probability that a house with at least 2,014 sq ft has four bedrooms and sold for more than $250,000? Round your answer to 3 decimal places.
sum(HW_1$sqrft>=mean(HW_1$sqrft)&HW_1$price>250)/nrow(HW_1)#14
#15.Consider the housing.xls data set. The number of bedrooms in this data set range from 2 to 7 bedrooms. Report the probabilities (rounded to 4 decimal places) in the below table. Please also use a leading zero in your answers (IE, if the answer is .5, report 0.5). Note that your answers may not perfectly add up to 1 due to rounding.
round(sum(HW_1$bdrms==2)/nrow(HW_1),4)#15
round(sum(HW_1$bdrms==3)/nrow(HW_1),4)#15
round(sum(HW_1$bdrms==4)/nrow(HW_1),4)#15
round(sum(HW_1$bdrms==5)/nrow(HW_1),4)#15
round(sum(HW_1$bdrms==6)/nrow(HW_1),4)#15
round(sum(HW_1$bdrms==7)/nrow(HW_1),4)#15
sum(0.04545455+0.4772727+0.375+0.07954545+0.01136364+0.01136364)# 15 check 
#16.Consider the housing.xls data set. The number of bedrooms in this data set range from 2 to 7 bedrooms. We wish to know the probabilities that a house had X bedrooms and sold for at least $325,000. Report the probability of these two events occurring at the same time in the below table. Round your answer to 4 decimal places. Please also use a leading zero in your answers (IE, if the answer is .5, report 0.5). 
round(sum(HW_1$bdrms==2&HW_1$price>=325)/nrow(HW_1),4)#16
round(sum(HW_1$bdrms==3&HW_1$price>=325)/nrow(HW_1),4)#16
round(sum(HW_1$bdrms==4&HW_1$price>=325)/nrow(HW_1),4)#16
round(sum(HW_1$bdrms==5&HW_1$price>=325)/nrow(HW_1),4)#16
round(sum(HW_1$bdrms==6&HW_1$price>=325)/nrow(HW_1),4)#16
round(sum(HW_1$bdrms==7&HW_1$price>=325)/nrow(HW_1),4)#16
#17.Consider the housing.xls data set. The number of bedrooms in this data set range from 2 to 7 bedrooms. We wish to know the probabilities that a house sold for at leaast $325,000 conditional on having X bedrooms. Report these conditional probabilities in the below table. Round your answer to 2 decimal places. Please also use a leading zero in your answers (IE, if the answer is .5, report 0.5). 
round(sum(HW_1$price>=325&HW_1$bdrms==2)/sum(HW_1$bdrms==2),2)#17
round(sum(HW_1$price>=325&HW_1$bdrms==3)/sum(HW_1$bdrms==3),2)#17
round(sum(HW_1$price>=325&HW_1$bdrms==4)/sum(HW_1$bdrms==4),2)#17
round(sum(HW_1$price>=325&HW_1$bdrms==5)/sum(HW_1$bdrms==5),2)#17
round(sum(HW_1$price>=325&HW_1$bdrms==6)/sum(HW_1$bdrms==6),2)#17
round(sum(HW_1$price>=325&HW_1$bdrms==7)/sum(HW_1$bdrms==7),2)#17
round(sum(HW_1$price>=325&HW_1$bdrms==7)/sum(HW_1$bdrms==7),2)#17






