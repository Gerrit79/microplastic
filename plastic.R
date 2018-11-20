Ucrit<-read.csv(file.choose())

library(lme4)
library(lmerTest)
options(na.action="na.omit")

Ucrit$ind<-as.factor(Ucrit$ind)
Ucrit$pair<-as.factor(Ucrit$pair)
Ucrit$clutch<-as.factor(Ucrit$clutch)
Ucrit$run<-as.factor(Ucrit$run)

m1<-lmer(ucrit~treat*size+(1|pair),data=Ucrit)

summary(m1)
anova(m1)
ranova(m1)
