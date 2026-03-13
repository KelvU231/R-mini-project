qchisq(.9,19)#5
x<-qchisq(.05,14)#6
round(14*5.29/x,2)#6
A<-3.6^2#7
B<-2.4^2#7
A/B#7
round(qchisq(.10,19),3)#8
qt(.95,48)
((5/sqrt(49))*1.645)+30#9
27+1.96*2#11
27-1.96*2#11
((27+1.96*2)-29)/2#11
((27-1.96*2)-29)/2#11
round(pnorm(((27-1.96*2)-29)/2)+(1-pnorm(((27+1.96*2)-29)/2)),3)#11
library(readxl)
HW_1 <- read_excel("Documents/ECON 203/HW 1.xls")
View(HW_1)
E<-var(HW_1$bdrms)#14
F<-((87)*E)/1#14
round(pchisq(F,87),3)#14
G<-qchisq(.95,87)#16
round(F/G,3)#16
H<-var(HW_1$bdrms[HW_1$colonial==1])#17
I<-var(HW_1$bdrms[HW_1$colonial==0])#17
L<-H/I#17
J<-sum(HW_1$colonial==1)#18
K<-sum(HW_1$colonial==0)#18
round(qf(.025,J-1,K-1),3)#18
round(qf(.975,J-1,K-1),3)#18
round(pf(L,J-1,K-1),3)#19
round((1-pf(L,J-1,K-1)),3)#19
round(2*min(pf(L,J-1,K-1),(1-pf(L,J-1,K-1))),3)#19

      