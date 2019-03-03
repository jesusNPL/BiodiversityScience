
# obtained from Jarrett Byrnes at https://gist.github.com/jebyrnes/6886018


#A quick R script I used to convince myself of why our current tests for Sampling effects in BEF research are likely wrong, and result from statistical bias rather than real biology. Thanks to Forest Isbell for hammering the idea home and Marc Hensel for making me explain this clearly.


library(ggplot2)
library(plyr)

###
#let's simulate a diversity experiment with monocultures and polycultures
###
set.seed(2202)
mono <- 8
n <- 8

SIMdf <- data.frame(sp = sort(rep(c(LETTERS[1:mono], "Poly"), n)), 
                    div = c(rep(1, mono*n), rep(mono, n)))

#### we sample some compositional effect from a random distribution for ALL treatments
#### there is no biology here - just that each composition has some random variation
SIMdf$compEffect <- 3.5*as.vector(replicate(mono+1, rep(rnorm(1), n)))					

#now we calculate the yield where there is a linear 
SIMdf$y <- SIMdf$compEffect + rnorm(nrow(SIMdf), SIMdf$div)

#do we see the diversity effect?

qplot(div, y, data = SIMdf) + theme_bw()+stat_smooth(method = "lm")
summary(lm(y ~ div, data = SIMdf))

#yes, it's there

#look at the mono/poly difference visually
SIMdfSummarized <- ddply(SIMdf, c("sp", "div"), summarise, ymean = mean(y), 
                         ymin = quantile(y, 0.025), ymax = quantile(y, 0.975))
ggplot(SIMdfSummarized, aes(x = sp, y = ymean, ymin = ymin, ymax = ymax)) + 
  geom_pointrange() + theme_bw()

#whoah!  E and H are the same or better than the average poly.  But this is due to chance, 
#not because the poly contains the E and H

#what is better is to add some intermediate composition treatments and see if this is REALLY due to E and F, or if it is just the higher sample size of monoculture treatments

intPolyLevels <- choose(mono, mono-1)
intPoly <- rep(combn(LETTERS[1:mono], mono-1, FUN = function(x) paste(x, collapse = "")), n)
polyCompEffect <- rep(rnorm(intPolyLevels)*3.5, n)
polyY <- polyCompEffect + rnorm(length(intPoly), mono-1)

#now, let's see what would have happened with intermediate treatments
#let's look at the new experiment
SIMdf <- rbind(SIMdf, data.frame(sp = intPoly, div = mono-1, 
                                 compEffect = polyCompEffect, y = polyY))

qplot(div, y, data = SIMdf) + theme_bw()+stat_smooth(method = "lm")
summary(lm(y ~ div, data = SIMdf))

#yep, a diversity effect, although, 
#from compositional random sampling alone, we see that the 
#7 sp is better than the 8 on average - because we only have 1
#8 sp composition!

##
#now let's look at everything by treatment
##
SIMdfSummarized <- ddply(SIMdf, c("sp", "div"), summarise, 
                         ymean = mean(y), ymin = quantile(y, 0.025), ymax = quantile(y,0.975))
ggplot(SIMdfSummarized, aes(x = sp, y = ymean, ymin = ymin, ymax = ymax)) + 
  geom_pointrange() + theme_bw()

# WOW - the 'best' 7 species treatments are CLEARLY
# better than the best 1 species treatments. However, the best 
# single species treatments are as good if not better than 
# the average 7 species treatment.  So, we could conclude
# that this diversity trend is NOT driven by the probability of including
# E or H in a mixture. 