library(Cairo)
Func <- function(ru_1,ru_2,rn_1,rn_2) 
{
  set.seed(22)
  n <- 300 
  x <- runif (n, ru_1, ru_2) 
  e <- rnorm (n, rn_1, rn_2) 
  y <- 1.9*x+e
  layout(matrix(c(2,1,1,2,1,1,0,3,3),3,3, byrow = T))
  plot(x,y)
  boxplot(x)
  boxplot(e,horizontal = T)
  dev.copy(tiff, filename = "plot-ex08.png") 
  dev.off()
}

