rnd=runif(80, 5.0, 10.0)#80 say� 5.0 ile 10.0 aras�nda �retti
mat=matrix(rnd,20,4)
# 0 ile dolu 10 sat�r 5 sutun matrix(data = NA, nrow = 1, ncol = 1, byrow = FALSE,
#dimnames = ]NULL)) NA kay�p veriyi ifade eder.
#1. sat�r 5. eleman
mat[,4]#[sat�r,sutun] 4 sutunu tamamen getir.
mat[1,]#1.sat�r� tamamen getir.
sum(mat[,4])#4. sutun toplam�
colSums(mat)#sutun toplam�
rowSums(mat)#sat�r toplam�
#dizi indis g�r�nt�lerken indis yerine -1 yazarsak 1 oge haric di�erlerinin g�r�nt�ler.
deneme=mat[,-c(1,2)]# sat�rlara dokunma 1 ve 2. sutunu birle�tirip deneme de�i�kenine at.
setwd("F:/RStudio")#�al��ma dizini de�i�tirme
getwd()#working directory ogrenme
write.table(mat,"matris.csv",row.names = FALSE,sep = ',')#veri yazma
veri=read.table("veri.csv",sep = ',',header = TRUE,na.strings = 'NA')
str(veri)# string ve int bir arada tutan data yap�s� data.frame
veri[1,]
veri$yas #veri tablosunun yas sutununa ulasmak i�in.
nrow(veri)
ncol(veri)#sat�r s�t�n say�lar�n� verir.
rownames(veri)
colnames(veri)#sat�r s�t�n isimlerini verir.
dim(veri)#matris boyutu.
colnames(veri)=c("x","y","z")
summary(veri)#veri i�indeki bilgileri tamam�n� istatiksel olarak �eker min-max, ort,median vb.
source("pitahminetfonksiyon.r")#fonk. include etme
pitahminet(100000,TRUE)#fonk. �a��rma
