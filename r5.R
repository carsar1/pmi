set.seed(22)
x<-runif(300,-7,4)
e<-rnorm(300,0,5)
y<-1.9*x+e
layout(matrix(c(2,1,1,2,1,1,0,3,3),3,3, byrow = T))
plot (x,y)
boxplot(x)
boxplot(y,horizontal =T)
dev.copy(tiff, filename = "plot-ex05.png")
dev.off() 

