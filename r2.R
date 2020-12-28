regions<-c("Московская область", "Тульская область")
years<-c(2015,2016)
months<-c("Январь","Февраль","Март","Апрель","Май","Июнь","Июль","Август","Сентябрь","Октябрь","Ноябрь","Декабрь")
file.names<-paste0(rep(regions,each=24),"_Y",rep(years,each=12),"_",months,".csv")
file.names
df.seq<-data.frame(num=23:30,region=rep(regions,each=4),flow=c("Импорт","Экспорт","Реимпорт","Реэкспорт"),okpd.code=rep(22,each=8))
df.seq
set.seed(230)
df.rand=data.frame(x.n=rnorm(9,25,8),x.u=runif(9,-3,16),x.t=rt(9,8))
df.rand
