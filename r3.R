dflab<-read.table("FGLab.csv", header=T, sep=",", dec=".", stringsAsFactors=F, row.names=1)
keep<-c("Имя","Рост")
dflab1=dflab[dflab$Пол=="муж" , keep, drop=F]
dflab1
dflab2=dflab[c(-2,-6),1:6]
dflab2
x<-dflab$Рост[dflab$Пол=="жен"]
mean(x)
z<-dflab$Имя[dflab$Пол=="муж"&dflab$Возраст==min(dflab$Возраст[dflab$Пол=="муж"])]
z

