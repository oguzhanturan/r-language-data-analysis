set.seed(1)
tip1=matrix(runif(100,-2,0),ncol=2)
tip2=matrix(runif(100,-0.1,2),ncol = 2)
tip3=matrix(runif(100,3,5),ncol = 2)

veri=rbind(tip1,tip2,tip3) #c kod yapsayd�k matrix olarak tutmazd�. 300 tane uc uca veri yapard�
#rbind matris olarak tutmam�z� sa�lar.
plot(veri)
kumeleme=kmeans(veri,4,nstart = 10)#nstart 10 kez bu i�lemi yap 10 i�lem sonuncunda tutarl� olan� al

plot(veri,col=kumeleme$cluster)
#kmeans �al��ma prensibi verilen say� kadar kumeyi kordinat sistemine yerle�tirip kume merkezinin 
#noktalara uzakl�klar�n� bulup en yak�n noktalara kumeyi ta�� kume merkezini g�ncelle i�lemi yapar.

performans=rep(0,10)#i�i s�f�rla dolu bir array dup gibi asemblydeki
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