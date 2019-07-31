ggplot(sehir_sicaklik)
ggplot(sehir_sicaklik,aes(x=Londra,y=NY))
ggplot(sehir_sicaklik,aes(x=Londra,y=NY)) + geom_point()
ggplot(sehir_sicaklik,aes(x=Londra,y=NY)) + geom_point(aes(color=yil))
ggplot(sehir_sicaklik,aes(x=Londra,y=NY)) + geom_point(aes(color=as.factor(yil)),alpha=0.8)
#color, shape,size,alpha,fill
ggplot(sehir_sicaklik,aes(x=Londra,y=NY)) + geom_point(aes(shape=as.factor(yil),color=as.factor(ay)),alpha=0.8)
#ggplot ile alýnan verilerin geom_point ile 
ggplot(ss2,aes(x=as.integer(ay),y=Venedik))+geom_line()+geom_line(aes(y=NY))
#aes() = Estetik eþlemeler, verilerin deðiþkenlerinin jeomlerin görsel niteliklerine 
#(estetik) nasýl eþleþtirildiðini açýklar. Estetik eþlemeler ggplot2'de ve tek tek katmanlarda ayarlanabilir.
ggplot(ss2,aes(x=as.integer(ay),y=Londra))+geom_line()+geom_line(aes(y=Venedik),color="red")
ss3<-ss2 %>% gather(key=Sehir,value=Sicaklik,-ay)
ss3
ggplot(ss3,aes(x=ay,y=Sicaklik)) +geom_line(aes(color=Sehir))
ss4<-ss3 %>% group_by(Sehir) %>% summarise(ort_sicaklik=mean(Sicaklik))
ggplot(ss4,aes(x=Sehir,y=ort_sicaklik)) +geom_bar(stat="identity",aes(fill=Sehir))#geom bar stat="identity" istiyor color=fill ayný iþi yapar


