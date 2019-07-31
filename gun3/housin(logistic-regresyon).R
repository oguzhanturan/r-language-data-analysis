library(data.table)
house_data=fread("F:/RStudio/gun3/housing.data")#dosyadan okuma komutu data.table paketinin komutu
setwd("F:/Rstudio/gun3")
logistic_veri=house_data
logistic_veri$V14=logistic_veri$V14>median(logistic_veri$V14)
#logistic_veri$V14=ifelse(logistic_veri$V14,"Yüksek","Dusuk")
log_reg=glm(V14~.,family = binomial,logistic_veri)
summary(log_reg)

#Coefficients:
#             Estimate Std. Error z value Pr(>|z|)(önem)   
#(Intercept) 12.369581   4.003846   3.089 0.002005 ** 
#V1          -0.061307   0.064570  -0.949 0.342381    
#V2           0.017805   0.013617   1.308 0.191034    
#V3           0.021489   0.043071   0.499 0.617833    
#V4           1.719603   0.661869   2.598 0.009374 ** 
#V5          -6.593055   2.715828  -2.428 0.015197 *  
#V6           1.535316   0.431688   3.557 0.000376 ***
#V7          -0.025074   0.010295  -2.436 0.014871 *  
#V8          -0.711635   0.169498  -4.198 2.69e-05 ***
#V9           0.253286   0.061133   4.143 3.42e-05 ***
#V10         -0.009961   0.002961  -3.364 0.000767 ***
#V11         -0.539465   0.107420  -5.022 5.11e-07 ***
#V12          0.004022   0.002840   1.416 0.156811    
#V13         -0.326600   0.054795  -5.960 2.52e-09 ***
tahmin=predict(log_reg,logistic_veri,type = 'response')
tahmin[1]
sinif_tahmin=tahmin>0.5

kacidogru=sum(sinif_tahmin==logistic_veri$V14) #Tahminlerden kaçı doğru saydırdık
yuzde_dogruluk=kacidogru/nrow(logistic_veri) #yüzdelil değere çevrildi.
table(logistic_veri$V14,sinif_tahmin)
library(rpart)
library(rpart.plot)
agacmodeli=rpart(V14~.,logistic_veri,method = "class")
rpart.plot(agacmodeli)
tahminagac=predict(agacmodeli,logistic_veri,type = "class")
tahminagac[1,2]
kacidogru=sum(sinif_tahmin==logistic_veri$V14) #Tahminlerden kaçı doğru saydırdık
yuzde_dogruluk=kacidogru/nrow(logistic_veri) #yüzdelil değere çevrildi.
print(logistic_veri$V14,tahminagac)
#Nasıl Yorumlanır.
#> tahmin=predict(log_reg,logistic_veri)
#> tahmin[1]
#      1 
#3.76216 
#> tahmin=predict(log_reg,logistic_veri,type = 'response')
#> tahmin[1]
#       1 
#0.977294 
#
 