library(readxl)
ceosal2 <- read_excel("Documents/ECON 203/ceosal2.xls")
View(ceosal2)

mod1<-lm(salary~grad, data=ceosal2)#13
summary(mod1)#13
round(((mod1$coefficients[2])*1000),0)#13

grad2<-1-ceosal2$grad#14: 1=not have graduate degree 0=have graduate degree
round(mean(grad2),3)#14

mod2<-lm(salary~grad2,data=ceosal2)#15
summary(mod2)#15
round(((864.213+3.522)*1000),0)#15

m1 <- lm(salary ~ sales, data = ceosal2)#17
m2 <- lm(salary ~ log(sales), data = ceosal2)#17
m3 <- lm(log(salary) ~ sales, data = ceosal2)#17
m4 <- lm(log(salary) ~ log(sales), data = ceosal2)#17
par(mfrow = c(2,2))

plot(ceosal2$sales, ceosal2$salary,#17
     main = "salary vs sales",
     xlab = "sales", ylab = "salary")

plot(log(ceosal2$sales), ceosal2$salary,#17
     main = "salary vs log(sales)",
     xlab = "log(sales)", ylab = "salary")

plot(ceosal2$sales, log(ceosal2$salary),#17
     main = "log(salary) vs sales",
     xlab = "sales", ylab = "log(salary)")

plot(log(ceosal2$sales), log(ceosal2$salary),#17
     main = "log(salary) vs log(sales)",
     xlab = "log(sales)", ylab = "log(salary)")

summary(lm(log(salary) ~ mktval, data = ceosal2))#18
summary(lm(log(salary) ~ profits, data = ceosal2))#18
summary(lm(log(salary) ~ ceoten, data = ceosal2))#18
summary(lm(log(salary) ~ comten, data = ceosal2))#18

(3.792e-05*100)#19

summary(lm(log(salary) ~log(mktval), data = ceosal2))#20
round(0.25746,3)#20
