#dizi atama
m=c(50,60,55,44,11)
#2. eleman g�ncellenmedi dizi indisi 0 dan ba�lamaz print(m) bast�rma c: combine birle�tirmek i�in
m[2]=65
i=1
m[2+i]=m[2+i]+5
#int 'i string'e e�itleme bu durumda t�m veriler string e d�ner i�lem yapamay�z
m[3]="o�uzhan"
#m[4]*5 #bu i�lem sonucunda Error in m[4] * 5 : non-numeric argument to binary operator sebebi string olmas�
#hatas� al�n�r m[3] � tekrar int'e d�n��t�rmek i�in say�ya e�itlemek yetmiyor.Bunu i�in diziAdi=as.numeric(diziAdi) fonksiyonu kullan�l�r.
# ? as.numeric fonk. �zellikleri
m[3]=63
m=as.numeric(m)
str(m)#veri yap�s�n�n tipini verir
class(m)#veri yap�s�n�n ismini verir
m<55#TRUE FALSE FALSE  TRUE  TRUE ��kt� bu �ekilde olur t�m dizinin elemanlar�n� kontrol eder.
m[m<55]#mant�ksal ifadeleri index olarak alabiliyoruz. 50 44 11 ��kt� olur.
m[m<55]=m[m<55]+5# 55 den k���k ifadeler yani TRUE d�nenleri 5 er puan artt�rmak i�in
which(m<55)# which() 55 den k���k olanlar�n index numaras�n� d�nd�r�r.

if(m[5]<55){
  print("m[5] 55 den k���k")
}else{
  print("m[5] 55 den b�y�k")
}#else yaz�m�nde if in parantezi kapat�ld��� yere yaz�yoruz.
paste("sonu�",m[4])#strinleri birle�tirip yazmak i�in
for(ind in 1:5){
  if(m[ind]<55){
    ifade=paste(ind,". de�er 55 den az",m[ind])
    print(ifade)
  }else{
    print("m[5] 55 den b�y�k")
  }
}#1:5 1 den 5 e dizi anlam�na geliyor.


























