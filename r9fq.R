#По заданию функция должна возвращать фрейм с описательной стаитстикой "Первый квартиль без учета аномалий", но
#Я не понял, как отбраковать аномальные значения, поэтому функция возвращает просто "Первый квартиль"
installed.packages("Cairo")
installed.packages("visualize")
library(Cairo)
fq <- function(ru_1, ru_2, rn_1, rn_2) 
{
  set.seed(22)
  n <- 300 
  x <- runif(n, ru_1, ru_2) 
  e <- rnorm(n, rn_1, rn_2) 
  y <- 1.9*x + e
  layout(matrix(2:1, 1, 2, byrow = T))
  hist(x, col="green", border="black", prob = TRUE, xlab="x",ylab ="Density", main = "histogram of x", ylim=c(0,0.15)) 
  lines(density(x), col="red", lwd =2) 
  curve(dunif(x, ru_1, ru_2), col = "blue",lwd = 2, add = T)
  hist(e, col="green", border="black", prob = TRUE, xlab="x", ylab ="Density", main = "histogram of e") 
  lines(density(e), col="red", lwd =2) 
  curve(dnorm(e,mean = mean (e), sd = sd(e)), col = "blue",lwd = 2, add = T, xname = "e")
  dev.copy(tiff, filename = "plot-ex09.png")
  dev.off() 
  mean(x) 
  x25 = quantile(x, 0.25)
  x75 = quantile(x, 0.75)
  xd = x75 - x25
  mean(y) 
  y25 = quantile(y, 0.25)
  y75 = quantile(y, 0.75)
  yd = y75 - y25
  qFrame <- data.frame(Variable = c("x","y"),  "1stquartile" = c(x25,y25))
  qFrame
}