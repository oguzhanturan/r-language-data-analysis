library(data.table)
house_data=fread("F:/RStudio/gun3/housing.data")#dosyadan okuma komutu data.table paketinin komutu
regr=lm(V14~.,house_data) # noktanýn anlamý herþeyi kullan v14 sutunundan
summary(regr)
plot(house_data$V14,regr3$fitted.values,xlab = "Gerçek",ylab = "Tahmini")

house_data=data.frame(house_data)#data frame çevirdik
tahmin=predict(regr,house_data[5,])
regr2=lm(V14~V1+V4,house_data)
summary(regr2)
regr3=lm(V14~-1+.,house_data)
summary(regr3)
tahmin3=predict(regr3,house_data[5,])

#ekran çýktýsý V'lerin açýklamalarý housing.txt de - regresyon nedir.
# Call:
#   lm(formula = V14 ~ ., data = house_data)
# 
# Residuals:
#   Min      1Q  Median      3Q     Max 
# -15.595  -2.730  -0.518   1.777  26.199 
# 
# Coefficients:
#               Estimate Std. Error t value Pr(>|t|)(önem hipotez testine bak)    
# (Intercept)    3.646e+01  5.103e+00   7.144 3.28e-12 ***
#   V1          -1.080e-01  3.286e-02  -3.287 0.001087 ** 
#   V2           4.642e-02  1.373e-02   3.382 0.000778 ***
#   V3           2.056e-02  6.150e-02   0.334 0.738288    
#   V4           2.687e+00  8.616e-01   3.118 0.001925 ** 
#   V5          -1.777e+01  3.820e+00  -4.651 4.25e-06 ***
#   V6           3.810e+00  4.179e-01   9.116  < 2e-16 ***
#   V7           6.922e-04  1.321e-02   0.052 0.958229    
#   V8          -1.476e+00  1.995e-01  -7.398 6.01e-13 ***
#   V9           3.060e-01  6.635e-02   4.613 5.07e-06 ***
#   V10         -1.233e-02  3.760e-03  -3.280 0.001112 ** 
#   V11         -9.527e-01  1.308e-01  -7.283 1.31e-12 ***
#   V12          9.312e-03  2.686e-03   3.467 0.000573 ***
#   V13         -5.248e-01  5.072e-02 -10.347  < 2e-16 ***
#   ---
#   Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
# 
# Residual standard error: 4.745 on 492 degrees of freedom
# Multiple R-squared:  0.7406,	Adjusted R-squared:  0.7338 
# F-statistic: 108.1 on 13 and 492 DF,  p-value: < 2.2e-16#