installed.packages("visualize")
layout(matrix(1:1, 1, 1, byrow = T))
c2005 <- c(4866.8, 8675, 7996.4,39032.9)
c2009 <- c(9756.2, 16952.6, 17714.1, 86315.2)
c2013 <- c(13872.2, 36555.7, 13454.6, 164249)
c2017 <- c(15964.7, 39884, 14014.1, 186224)
mat <- cbind("2005"=c2005,"2009"= c2009, "2013"=c2013, "2017"=c2017)
mat
barplot(mat,  col = terrain.colors(4), ylim=c(0,250000), xlab = "годы") 
mtext("Свердловская область", side = 2, line = 2, cex = 2, font = 2)
mtext('Расходы консолидированных бюджетов',side = 3,line =1.5, cex = 1.5, font=3)
legend("topleft",
       c("общ.воп.","нац. эк.","жкх","соц.культ.мер."), fill = terrain.colors(4), horiz=F)
dev.copy(tiff, filename = "plot-ex07.png")
dev.off()

