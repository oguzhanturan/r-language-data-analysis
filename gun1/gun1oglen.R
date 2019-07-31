rnd=runif(80, 5.0, 10.0)#80 sayý 5.0 ile 10.0 arasýnda üretti
mat=matrix(rnd,20,4)
# 0 ile dolu 10 satýr 5 sutun matrix(data = NA, nrow = 1, ncol = 1, byrow = FALSE,
#dimnames = ]NULL)) NA kayýp veriyi ifade eder.
#1. satýr 5. eleman
mat[,4]#[satýr,sutun] 4 sutunu tamamen getir.
mat[1,]#1.satýrý tamamen getir.
sum(mat[,4])#4. sutun toplamý
colSums(mat)#sutun toplamý
rowSums(mat)#satýr toplamý
#dizi indis görüntülerken indis yerine -1 yazarsak 1 oge haric diðerlerinin görüntüler.
deneme=mat[,-c(1,2)]# satýrlara dokunma 1 ve 2. sutunu birleþtirip deneme deðiþkenine at.
setwd("F:/RStudio")#çalýþma dizini deðiþtirme
getwd()#working directory ogrenme
write.table(mat,"matris.csv",row.names = FALSE,sep = ',')#veri yazma
veri=read.table("veri.csv",sep = ',',header = TRUE,na.strings = 'NA')
str(veri)# string ve int bir arada tutan data yapýsý data.frame
veri[1,]
veri$yas #veri tablosunun yas sutununa ulasmak için.
nrow(veri)
ncol(veri)#satýr sütün sayýlarýný verir.
rownames(veri)
colnames(veri)#satýr sütün isimlerini verir.
dim(veri)#matris boyutu.
colnames(veri)=c("x","y","z")
summary(veri)#veri içindeki bilgileri tamamýný istatiksel olarak çeker min-max, ort,median vb.
source("pitahminetfonksiyon.r")#fonk. include etme
pitahminet(100000,TRUE)#fonk. çaðýrma
