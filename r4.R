data("USArrests")
?USArrests
str(USArrests)
head(USArrests, n=5)
tail(USArrests, n=5)
summary(USArrests)
x=colnames(USArrests)
# ? Оставьте во фрейме только столбцы с количественными показателями
# Рассчитайте коэффициенты вариации и среднее квартильное расстояние
#по каждому столбцу получившегося фрейма.
# Я не нашел функций для этого