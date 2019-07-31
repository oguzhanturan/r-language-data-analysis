#install.packages("data.table") paket y�kleme kodu   
library(data.table)
distanceMat=fread('F:/RStudio/gun3/InClass_MDS_distance_city.csv')#dosyadan okuma komutu data.table paketinin komutu

distanceMat[is.na(distanceMat)]=0 #ayn� �ehirler aras� uzakl�k 0 a e�itlendi.

mds=cmdscale(distanceMat) #multi dimensional scalling verilen matrisi iki boyuta d���r�yor.Classical multidimensional scaling (MDS) of a data matrix. Also known as principal coordinates analysis (Gower, 1966).

plot(mds[,1],mds[,2],main='Location',xlab='', ylab='',col=0)
text(mds[,1],mds[,2],names(distanceMat),cex = .75,pos=4)
