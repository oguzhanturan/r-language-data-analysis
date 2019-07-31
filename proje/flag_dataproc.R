options(stringsAsFactors = FALSE)
library(dplyr)
library(ggplot2)
veri=read.table("flag_data.csv",sep = ',',header = TRUE,na.strings = 'NA')
#veri çekildi
colnames(veri)= c("Ulke","Kita","Konum","YuzOlcumu","Nufus","Dil","Din","V-cizgi","H-cizgi","RenkSayisi","Red","Green","Blue","Gold","White","Black","Orange","AnaRenk","DaireNum","Sil","sil2","sil3","sil4","sil5","Simge","sil6","Text","sil7","sil8","sil9")
#colon isimleri deðiþtirildi
veri =
veri %>% left_join(.,
tibble(Kita=1:6,Kita_Ismi=c("KuzeyAmerika","GüneyAmerika","Avrupa","Afrika","Asya","Okyanusya")),by="Kita") %>% tbl_df()

veri=
veri %>% left_join(.,
tibble(Din=0:7,Dinler=c("Catholic", "Other Christian","Muslim","Buddhist","Hindu","Ethnic", "Marxist", "Others","bars " )),by="Din") %>% tbl_df()


veri %>%
  select(-starts_with("sil")) %>%
  tbl_df()
#gereksiz kolonlar silindi.
  ss1=veri %>% 
    group_by(Kita_Ismi) %>% count(Kita_Ismi)
# isim=c("KuzeyAmerika","GüneyAmerika","Avrupa","Afrika","Asya","Okyanusya")
  ggplot(ss1,aes(x=Kita_Ismi,y=n)) + geom_bar(stat="identity",aes(fill=Kita_Ismi))
  
  ss2=veri %>% 
    select(YuzOlcumu) %>% unlist()
 
     ggplot(veri,aes(x=Ulke,y=YuzOlcumu)) + 
     geom_count(aes(color=as.factor(Kita_Ismi)))+
     theme(axis.text.x = element_text(angle = 90, vjust=0.5, hjust=1),axis.line.x=element_line(lineend = "butt"))
  
               
     
  
    
 