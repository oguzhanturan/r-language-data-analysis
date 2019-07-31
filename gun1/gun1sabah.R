#dizi atama
m=c(50,60,55,44,11)
#2. eleman güncellenmedi dizi indisi 0 dan baþlamaz print(m) bastýrma c: combine birleþtirmek için
m[2]=65
i=1
m[2+i]=m[2+i]+5
#int 'i string'e eþitleme bu durumda tüm veriler string e döner iþlem yapamayýz
m[3]="oðuzhan"
#m[4]*5 #bu iþlem sonucunda Error in m[4] * 5 : non-numeric argument to binary operator sebebi string olmasý
#hatasý alýnýr m[3] ü tekrar int'e dönüþtürmek için sayýya eþitlemek yetmiyor.Bunu için diziAdi=as.numeric(diziAdi) fonksiyonu kullanýlýr.
# ? as.numeric fonk. özellikleri
m[3]=63
m=as.numeric(m)
str(m)#veri yapýsýnýn tipini verir
class(m)#veri yapýsýnýn ismini verir
m<55#TRUE FALSE FALSE  TRUE  TRUE çýktý bu þekilde olur tüm dizinin elemanlarýný kontrol eder.
m[m<55]#mantýksal ifadeleri index olarak alabiliyoruz. 50 44 11 çýktý olur.
m[m<55]=m[m<55]+5# 55 den küçük ifadeler yani TRUE dönenleri 5 er puan arttýrmak için
which(m<55)# which() 55 den küçük olanlarýn index numarasýný döndürür.

if(m[5]<55){
  print("m[5] 55 den küçük")
}else{
  print("m[5] 55 den büyük")
}#else yazýmýnde if in parantezi kapatýldýðý yere yazýyoruz.
paste("sonuç",m[4])#strinleri birleþtirip yazmak için
for(ind in 1:5){
  if(m[ind]<55){
    ifade=paste(ind,". deðer 55 den az",m[ind])
    print(ifade)
  }else{
    print("m[5] 55 den büyük")
  }
}#1:5 1 den 5 e dizi anlamýna geliyor.


























