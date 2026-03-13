library(readr)
hw3_data_1 <- read_csv("hw3_data_1.csv")
View(hw3_data_1)
round(mean(hw3_data_1$unknown),2)#11
round(mean(hw3_data_1$unknown),2)/10#12
round(mean(hw3_data_1$known_normal),2)#13
round(mean(hw3_data_1$known_binom),2)#13
round(sd(hw3_data_1$known_binom),2)#14
round(sd(hw3_data_1$known_normal),2)#14
sum(hw3_data_1$known_binom>10)/nrow(hw3_data_1)#15
sum(hw3_data_1$known_normal>10)/nrow(hw3_data_1)#16
sum(hw3_data_1$known_binom>10.5)/nrow(hw3_data_1)#17
sum(hw3_data_1$known_normal>10.5)/nrow(hw3_data_1)#17
sum(hw3_data_1$known_binom>10.5)/nrow(hw3_data_1) == sum(hw3_data_1$known_binom>10)/nrow(hw3_data_1)#17
sum(hw3_data_1$known_normal>10)/nrow(hw3_data_1) == sum(hw3_data_1$known_normal>10.5)/nrow(hw3_data_1)#17
library(readr)
hw3_data_2 <- read_csv("hw3_data_2.csv")
View(hw3_data_2)

round(mean(hw3_data_2$known_binom_larger),2)#18
round(sd(hw3_data_2$known_binom_larger),2)#18
round(mean(hw3_data_1$known_binom),2)#18
round(sd(hw3_data_1$known_binom),2)#18

round(mean(hw3_data_2$known_normal_larger),2)#18
round(sd(hw3_data_2$known_normal_larger),2)#18
round(mean(hw3_data_1$known_normal),2)#18
round(sd(hw3_data_1$known_normal),2)#18
x <- hw3_data_2$known_binom_larger#19
x - mean(hw3_data_2$known_binom_larger)#19
y <- x - mean(hw3_data_2$known_binom_larger)#19
y/ sd(hw3_data_2$known_binom_larger)#19
sd(y/ sd(hw3_data_2$known_binom_larger))#19
z <-y/ sd(hw3_data_2$known_binom_larger)#20
sum(abs(z) >=2)/nrow(hw3_data_2)#20
