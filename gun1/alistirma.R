dolar=3.70
set.seed(135)
dolar<-round(3.7*exp(cumsum((0.02-0.5*(0.2^2))/252 + 0.2*rnorm(60)*sqrt(1/252))),4)

#�lk 10 g�n ile kendi verilerinizi kontrol edin.
print(dolar[1:60])

ifade=paste(which.max(dolar),". G�n dolar�n max de�eri",max(dolar))
ifade2=paste(which.min(dolar),". G�n dolar�n min de�eri",min(dolar))
print(ifade)
print(ifade2)
summary(dolar)
ifade3=which(dolar>=3.85)
print(paste("3.85 oldu�u g�nler",ifade3))

if(dolar[1]<3.70){
  ifade4=paste(sum(diff(dolar)<0) +1,"d���� g�sterdi�i g�n say�s�")
}else{
  ifade4=paste(sum(diff(dolar)<0),"d���� g�sterdi�i g�n say�s�")
  }

print(ifade4)
s�rala=rev(sort(dolar[dolar>3.70]))
ifade5=s�rala[10]
print(paste("en y�ksek oldu�u 10. g�n",ifade5))

print("Dolar�n de�erinin 6 kuru� veya daha fazla de�i�ti�i g�nler")
kyt=0
for(ind in 1:60){
  loc=abs(dolar[ind-1]-dolar[ind])>=0.06
  if(isTRUE(loc)){
    kyt[i]=loc
    print(ind)
    }
}




