library(tidyverse)

pn_long <- read_csv("FeedingTimeBacteriaAlphaDiversity.csv")



library(lme4)
library(lmerTest)  # Note, we might have to install this first! 


mem_rt_4 <- lmer(Diversity ~ TimePoint + BMI + Age + Gender + (1|PatientID), data = pn_long)
coef(summary(mem_rt_4))
head(coef(mem_rt_4)$PatientID)
summary(mem_rt_4)

t.test(Diversity ~ TimePoint, data=pn_long, paired=TRUE)$statistic

dotplot(PatientID ~ resid(mem_rt_4), data = pn_long, abline = list(v = 0))
summary(resid(mem_rt_4))
        