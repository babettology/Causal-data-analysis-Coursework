# Causal Analysis Script
library(lmtest)
library(sjPlot)
library(readr)
library(rdrobust)
library(rdd)
library(ggplot2)
library(fixest)
library(AER)
library(multiwayvcov)

# Load the data 
load("~/Desktop/Q-Step/Causal Analysis/Assesment/2024essay_q1.Rda")
load("~/Desktop/Q-Step/Causal Analysis/Assesment/2024essay_q2.Rda")
Question 1
a)
I.
# First stage regression: treatment on logdistance
first_stage <- lm(treatment ~ logdistance, data = g)
coeftest(first_stage, cluster.vcov(first_stage, g$munid))
# Table model summary
tab_model(first_stage, show.ci = FALSE, digits = 3, title = "First stage regression results",  show.se = TRUE, 
          dv.labels = "Treatment ~ Log Distance" )
II.
#restricted excluding the instrument
m1 <- lm(treatment ~ 1, data =g)

# F statistics
fstat <- waldtest(first_stage, m1, vcov = cluster.vcov(first_stage, g$munid))
III.
b)
c)
g$fitted_values <- fitted.values(first_stage)

asylum_mdl <- lm(g$score_asylum ~ g$fitted_values)
coeftest(asylum_mdl, cluster.vcov(asylum_mdl, g$munid))
immig_mdl <- lm(g$score_immig ~ g$fitted_values)
coeftest(immig_mdl, cluster.vcov(immig_mdl, g$munid))
d)
I.
II.
# always takers 
itt <- mean(g$score_asylum[g$low_distance==1]) -mean(g$score_asylum[g$low_distance==0])
itt
## proportion of compilers
prop_c <- sum(g$treatment[g$low_distance==1])/length(g$treatment[g$low_distance==1]) - sum(g$treatment[g$low_distance==0])/length(g$treatment[g$low_distance==0])
prop_c
III.
# CACE
cace <- itt / prop_c
cace
IV.
summary(ivreg(score_asylum ~ treatment| low_distance , data = g))
tab_model(ivreg(score_asylum ~ treatment| low_distance , data = g ), show.ci = FALSE, show.std = TRUE, digits = 3)
QUESTION 2
a)
B)
# Test for sorting around the threshold
mccrary_test <- DCdensity(sheriff$running_var, verbose = TRUE)
print(mccrary_test)
c)
# rdrobust with optimal bw (by default)
rdd_result <- rdrobust(sheriff$share_detained_sheriff, sheriff$running_var)
summary(rdd_result)
d)
# other way of visualisation with confidence interval 
# Loop over bandwidths from 2 to 10 (using ChatGPT for efficient loops)
bandw <- data.frame()
for (bw in 2:10) {
  rdd_res <- rdrobust(sheriff$share_detained_sheriff, sheriff$running_var, c = 0, h = bw)
  bandw <- rbind(bandw, data.frame(bw = bw, coef = rdd_res$coef[1], se = rdd_res$se[1]))
}
# plot sensitivity with confident interval 
ggplot(bandw, aes(x = bw, y = coef)) +
  geom_point() +
  geom_errorbar(aes(ymin = coef - 1.96 * se, ymax = coef + 1.96 * se)) +
  labs(title = "Sensitivity of LATE to bandwidth", x = "Bandwidth", y = "Estimated Coefficient") +
  theme_minimal()

E)
# fixed effects model
fixed_effects <- feols(share_detained_sheriff ~ treat | county_id + year, 
                       data = sheriff, 
                       cluster = ~county_id)
# Viewing the results
tab_model(fixed_effects, show.ci = FALSE, show.se = TRUE, digits = 3)
f)


