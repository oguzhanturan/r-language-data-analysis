#dairealan/karealan=~dairei�indekinokta/karei�indekinokta montecarlo similasyonu
set.seed(1)
kacgozlem=100000#g�zlem say�s� artt�kca say�ya yakla��l�r.
x=runif(kacgorunzlem,-1,1)
y=runif(kacgozlem,-1,1)
plot(x,y)#�izim yapma arac�
uzaklik=sqrt(x^2+y^2)#�klid uzakl�k hesaplama iki nokta aras� uzakl�k formulunden.
length(uzaklik)#dizinin b�y�kl���
daireici=sum(uzaklik<=1)#dairei�i de�i�kenine uzakl���n 1 <= olanlar�n say�s�n� att�

renk=(uzaklik<=1)+1#true false olarak gelen de�erlere 1 ekledi ve true 1 false 0 de�erleri 1 art�nca k�rm�z� renk kodu 2 siyh renk kodu 1 oldu
plot(x,y,col=renk,pch=".",main = "Kare-Daire")#�izim i�in kullan�lan fonk.
tahminipi=4*daireici/kacgozlem
print(c(tahminipi,pi))