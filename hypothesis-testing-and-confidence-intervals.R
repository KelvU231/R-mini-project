library(readxl)
HW_1 <- read_excel("HW 1.xls")
View(HW_1)
A<-((1-.95)/2)+.95#2
round(qt(A,22,FALSE),3)#2
round(qnorm(A),2)#7
160*.85#9
B<-c(.1,.05,.001,.01,.2,.025,.005)#10
round(qt(B,17),2)#10
C<-round(qt(.025,15),3)#11
75.5+(C*(4/sqrt(16)))#12
round((21.3-19)/(6/sqrt(30)),2)#14
round(qnorm(.95),2)#15
round(qt(.05,87),3)#17
D<-mean(HW_1$price)#18
E<-sd(HW_1$price)#18
F<-nrow(HW_1)#18
round((D-315)/(E/sqrt(F)),3)#18
G<-sum(HW_1$colonial==1)#20
P<-G/nrow(HW_1)#20
round((P - 0.5)/sqrt(0.25/nrow(HW_1)), 3)#20

            
