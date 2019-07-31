dolar=3.70
set.seed(135)
dolar<-round(3.7*exp(cumsum((0.02-0.5*(0.2^2))/252 + 0.2*rnorm(60)*sqrt(1/252))),4)

#Ýlk 10 gün ile kendi verilerinizi kontrol edin.
print(dolar[1:60])

ifade=paste(which.max(dolar),". Gün dolarýn max deðeri",max(dolar))
ifade2=paste(which.min(dolar),". Gün dolarýn min deðeri",min(dolar))
print(ifade)
print(ifade2)
summary(dolar)
ifade3=which(dolar>=3.85)
print(paste("3.85 olduðu günler",ifade3))

if(dolar[1]<3.70){
  ifade4=paste(sum(diff(dolar)<0) +1,"düþüþ gösterdiði gün sayýsý")
}else{
  ifade4=paste(sum(diff(dolar)<0),"düþüþ gösterdiði gün sayýsý")
  }

print(ifade4)
sýrala=rev(sort(dolar[dolar>3.70]))
ifade5=sýrala[10]
print(paste("en yüksek olduðu 10. gün",ifade5))

print("Dolarýn deðerinin 6 kuruþ veya daha fazla deðiþtiði günler")
kyt=0
for(ind in 1:60){
  loc=abs(dolar[ind-1]-dolar[ind])>=0.06
  if(isTRUE(loc)){
    kyt[i]=loc
    print(ind)
    }
}




