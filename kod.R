library(naivebayes)

dane=iris

xtabs(~Species,data=dane)

idx=sample(2,150, replace=T, prob = NULL)
train=dane[idx==1,]
test=dane[idx==2,]
train
test

model=naive_bayes(Species ~ ., data = train)
plot(model)
head(dane)

#predykcja

p=predict(model, test)

cf=table(p,test$Species)
sum(diag(cf)/sum(cf))
cf
