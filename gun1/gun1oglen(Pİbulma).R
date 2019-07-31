#dairealan/karealan=~daireiçindekinokta/kareiçindekinokta montecarlo similasyonu
set.seed(1)
kacgozlem=100000#gözlem sayýsý arttýkca sayýya yaklaþýlýr.
x=runif(kacgorunzlem,-1,1)
y=runif(kacgozlem,-1,1)
plot(x,y)#çizim yapma aracý
uzaklik=sqrt(x^2+y^2)#öklid uzaklýk hesaplama iki nokta arasý uzaklýk formulunden.
length(uzaklik)#dizinin büyüklüðü
daireici=sum(uzaklik<=1)#daireiçi deðiþkenine uzaklýðýn 1 <= olanlarýn sayýsýný attý

renk=(uzaklik<=1)+1#true false olarak gelen deðerlere 1 ekledi ve true 1 false 0 deðerleri 1 artýnca kýrmýzý renk kodu 2 siyh renk kodu 1 oldu
plot(x,y,col=renk,pch=".",main = "Kare-Daire")#çizim için kullanýlan fonk.
tahminipi=4*daireici/kacgozlem
print(c(tahminipi,pi))