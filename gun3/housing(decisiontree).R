#install.packages("rpart")
#install.packages("rpart.plot")

library(rpart)
library(rpart.plot)
house_data=fread("F:/RStudio/gun3/housing.data")#dosyadan okuma komutu data.table paketinin komutu

rpart.plot(agacmodeli)#prp veya rpart.plot  �izim yap�yor Tree �iziyor.
barplot(agacmodeli$variable.importance)
agactahmini=predict(agacmodeli,house_data)
plot(house_data$V14,agactahmini)