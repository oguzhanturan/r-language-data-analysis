
housing_data=fread("C:\\Users\\berna\\Desktop\\karabuk\\day3\\housing.data.txt")
View(housing_data)


logistic_data=housing_data

logistic_data$V14=logistic_data$V14>median(logistic_data$V14)

#logistic_data$V14=ifelse(logistic_data$V14,"yuksek","dusuk")


################LOGISTIC REGRESSION################
log_reg=glm(V14~-1+.,family=binomial,logistic_data)#without intersect
summary(log_reg)

#tahmin performansý
pred=predict(log_reg,logistic_data,type="response")
pred[1]#oder odemez beklerken 3.76216 veriyor bu f(x), response ekleyince düzeliyor

sinif_tahmin=pred>0.5
kacidogru=sum(sinif_tahmin==logistic_data$V14)
print(kacidogru)
yuzdedogrulu=kacidogru/nrow(logistic_data)
print(yuzdedogrulu)

table(logistic_data$V14,sinif_tahmin)#confusion matrix

############DECISION TREES CLASSIFICATION#########

library(rpart)
library(rpart.plot)
agacmodel=rpart(V14~.,logistic_data,method = "class")
agacmodel

rpart.plot(agacmodel)

barplot(agacmodel$variable.importance)


tahminiagac=predict(agacmodel,logistic_data,type = "class")
tahminiagac[1:2]


kacidogru=sum(tahminiagac==logistic_data$V14)
yuzdedogrulu=kacidogru/nrow(logistic_data)
print(yuzdedogrulu)

table(logistic_data$V14,tahminiagac)
