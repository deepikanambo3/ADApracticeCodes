#source :http://www.r-tutor.com/elementary-statistics/non-parametric-methods/wilcoxon-signed-rank-test

library(MASS)
head(immer)

#checking if the barley yields have the same distributions in the years Y1(1931) and Y2(1932)
wilcox.test(immer$Y1,immer$Y2,paired=TRUE)
sig<-0.05
#since p value is lesser than alpha, they are not identical

#one sample rank test
xi<-c(20,18,23,5,14,8,18,22)
wilcox.test(xi,mu=10,conf.int=TRUE,correct=FALSE)

#Mann Whitney test:
#source : http://www.r-tutor.com/elementary-statistics/non-parametric-methods/mann-whitney-wilcoxon-test

wilcox.test(mpg~am, data=mtcars)

#Since the pvalue is less than aplha of 0.05, the two populations are non identical.


