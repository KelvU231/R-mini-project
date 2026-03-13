library(readxl)
HW_1 <- read_excel("Documents/ECON 203/HW 1.xls")
View(HW_1)
P<-c(HW_1$price)#11 
mean(P)#11 - expected value of Price
round(mean(P^2)-(mean(P))^2,0)#12 
P3<-HW_1$price[HW_1$bdrms==3]#13
round(mean(P3),3)#13
P4<-HW_1$price[HW_1$bdrms==4]#14
round(mean(P4),3)#14
P2<-HW_1$price[HW_1$bdrms==2]#15
P3<-HW_1$price[HW_1$bdrms==3]#15
P4<-HW_1$price[HW_1$bdrms==4]#15
P5<-HW_1$price[HW_1$bdrms==5]#15
P6<-HW_1$price[HW_1$bdrms==6]#15
P7<-HW_1$price[HW_1$bdrms==7]#15
M<-tapply(HW_1$price, HW_1$bdrms, mean)#15
yhat <- M[HW_1$bdrms]#15
sq_error <- (HW_1$price - yhat)^2#15
mse <- mean((HW_1$price - yhat)^2, na.rm = TRUE)#15
round(mse, 0)#15
round(cor(HW_1$price,HW_1$bdrms),2)#18
round(cor(HW_1$price,HW_1$colonial),2)#18
round(cor(HW_1$price,HW_1$lotsize),2)#18
round(cor(HW_1$price,HW_1$sqrft),2)#18
round(cov(HW_1$price,HW_1$sqrft),0)#19
round(cov(HW_1$price,HW_1$sqrft)/var(HW_1$sqrft),2)#20
      
