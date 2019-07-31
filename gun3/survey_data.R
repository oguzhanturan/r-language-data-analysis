#Customer Survey Data
data <- data.frame(
Price = c(6,7,6,5,7,6,5,6,3,1,2,5,2,3,1,2),
Software = c(5,3,4,7,7,4,7,5,5,3,6,7,4,5,6,3),
Aesthetics = c(3,2,4,1,5,2,2,4,6,7,6,7,5,6,5,7),
Brand = c(4,2,5,3,5,3,1,4,7,5,7,6,6,5,5,7)
)
data<- data.frame(Price,Software,Aesthetics,Brand)
plot(data,col=2,pch=".",cex=7)

pca <- princom(data,cor=T)
summary(pca,loadings=T)
barplot(pca$scores[,1])

#Importance of components:
#                   ekran çıktısı 
#                         Comp.1    Comp.2    Comp.3     Comp.4
# Standard deviation     1.5589391 0.9804092 0.6816673 0.37925777
# Proportion of Variance 0.6075727 0.2403006 0.1161676 0.03595911
# Cumulative Proportion  0.6075727 0.8478733 0.9640409 1.00000000 c1 de verinin %60 ı kurtarılabilir,c2 de %8478 ,c3 %96
# temel bileşen analizi : bileşenleri 4 taneden 1,2,3 taneye indirdiğimizdeki çıkan durumu gözlüyoruz.(Veri küçültme)
# Loadings:
#             Comp.1 Comp.2 Comp.3 Comp.4
# Price      -0.523         0.848       
# Software   -0.177  0.977 -0.120       
# Aesthetics  0.597  0.134  0.295 -0.734
# Brand       0.583  0.167  0.423  0.674