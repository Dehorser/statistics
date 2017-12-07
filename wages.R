library(AER)
data("CPS1988")

CPS1988$ethnicity

#Array of offsets
of1 = c(0, 50, 7, 0)
#Add offsets to reflect the null hypothesis
reg1 = lm(wage~education+offset(of1[2]*education)+
            experience+offset(of1[3]*experience)+
            ethnicity+offset(of1[4]*ethnicity), 
          data=CPS1988)

var.reg1=vcovHC(reg1, type = "HC1")
#Because we used 
coeftest(reg1, vcov = var.reg1)

#Lower and upper bounds
#Add offsets back
sd1=diag(var.reg1^0.5)
lb1=reg1$coefficients-1.96*sd1+of1
ub1=reg1$coefficients+1.96*sd1+of1
lb1
ub1