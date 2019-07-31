#install.packages("data.table") paket yükleme kodu   
library(data.table)
distanceMat=fread('F:/RStudio/gun3/InClass_MDS_distance_city.csv')#dosyadan okuma komutu data.table paketinin komutu

distanceMat[is.na(distanceMat)]=0 #ayný þehirler arasý uzaklýk 0 a eþitlendi.

mds=cmdscale(distanceMat) #multi dimensional scalling verilen matrisi iki boyuta düþürüyor.Classical multidimensional scaling (MDS) of a data matrix. Also known as principal coordinates analysis (Gower, 1966).

plot(mds[,1],mds[,2],main='Location',xlab='', ylab='',col=0)
text(mds[,1],mds[,2],names(distanceMat),cex = .75,pos=4)
