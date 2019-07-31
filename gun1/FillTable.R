veri=read.table("veri2.csv",sep = ',',header = TRUE,na.strings = 'NA')
yuv=veri$Buyukluk
yuv
plot(yuv,col=2)