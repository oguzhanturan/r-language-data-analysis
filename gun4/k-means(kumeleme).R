set.seed(1)
tip1=matrix(runif(100,-2,0),ncol=2)
tip2=matrix(runif(100,-0.1,2),ncol = 2)
tip3=matrix(runif(100,3,5),ncol = 2)

veri=rbind(tip1,tip2,tip3) #c kod yapsaydýk matrix olarak tutmazdý. 300 tane uc uca veri yapardý
#rbind matris olarak tutmamýzý saðlar.
plot(veri)
kumeleme=kmeans(veri,4,nstart = 10)#nstart 10 kez bu iþlemi yap 10 iþlem sonuncunda tutarlý olaný al

plot(veri,col=kumeleme$cluster)
#kmeans çalýþma prensibi verilen sayý kadar kumeyi kordinat sistemine yerleþtirip kume merkezinin 
#noktalara uzaklýklarýný bulup en yakýn noktalara kumeyi taþý kume merkezini güncelle iþlemi yapar.

performans=rep(0,10)#içi sýfýrla dolu bir array dup gibi asemblydeki
for(i in 1:10){
  kumeleme=kmeans(veri,i+1,nstart = 10)
  performans[i]=kumeleme$tot.withinss
}
plot(performans)
plot(performans,type = "l")

require(rpart)
require(rpart.plot)
kumeverisi=data.frame(veri,kume=kumeleme$cluster)
agac=rpart(kume~.,kumeverisi,method = "class")
rpart.plot(agac)