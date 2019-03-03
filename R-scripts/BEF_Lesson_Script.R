#Biodiversity Science BEF Module
#JJG January 2019

###Housekeeping
rm(list=ls())
graphics.off()
#install.packages("agricolae) #Do this if you haven't installed agricolae yet!
library(agricolae)

###Read in data from "Species richness and traits predict overyielding in stem growth
#in an early‐successional tree diversity experiment" (Grossman et al. 2017; Ecology 98:2601-14)

#Revise this to reflect the drive in which you have saved the .csv
setwd("~/Documents/Presentations/BEF Lesson/R:Minnesota version")
df<-read.csv("BEF_Lesson_Data.csv",header=T)

##"df" should now be a data frame with 9 columns and 140 rows. The rows are the 140 experimental
#plots in the FAB experiment. The columns are as follows:

#Plot = an arbitrary index for each plot
#SR = species richness of the plot (1, 2, 5, or 12 species)
#Comp = a categorical code that is the same for plots with the same composition. M = monoculture,
      #B = biculture, F = five-species, and T = 12-species
#PSV = phylogenetic species variability (Helmus et al. 2007) - a metric of phylogenetic diversity
      #independent of species richness
#FDis = functional dispersion (Laliberte and Legendre 2010) - a metric of functional diversity
      #independent of species richness
#NBE = net biodiversity effect - observed biodiversity (d_Y) minus expected biodiversity (based
      #on monocultures (not give in this example)
#CE = complementarity effects (Loreau and Hector 2001) CE + SE = NBE; calculated using a script from
      #Forest Isbell - UMN--Twin Cities
#SE = selection effects (Loreau and Hector 2001) see above
#d_Y = delta biomass, the average change in stem biomass of a tree in a given plot (kg)

#Note that there is no value for NBE, CE, and SE for monocultures since these can only
      #be calcluated for polycultures

###Exercise 1

##Question 1: does stem biomass yield depend on plot composition and richness?

#First, set a color scheme to distinguish among composition by color:
comp.cols<-c(rep("red",12),rep("orange",28),rep("yellow",10),rep("green",1))

#Then, plot the data to see if there is a visible trend:
with(df,plot(Comp,d_Y,col=comp.cols))

#Then, use a regression model to assess whether there is a difference:
m1<-lm(d_Y~Comp,data=df);summary(m1)
anova(m1) #Use an ANOVA for categorical data

#Since an ANOVA is significant, you can use a post-hoc test to gauge
#differences in composition:
m1.df<- HSD.test(m1,"Comp", group=TRUE,console=TRUE)

#Wow, there is a lot of variability among plot compositions. But what
#if we summarize across this variability based on the number of species
#in the plot. Following the same steps as above:
with(df,plot(SR,d_Y)) #It's a little hard to assess the pattern graphically
m2<-lm(d_Y~SR,data=df);summary(m2) #A linear model indicates "no"
anova(m2) #ANOVA confirms this.

#So, do plots of different composition vary in yield? What about plots 
#that vary in species richness/diversity?

##Question 2: does overyielding depend on plot composition and richness?
#Keep in mind that instead of how much biomass a plot produces,
#the response variable is now that number MINUS what would be expected
#if each tree in the plot were growing in monoculture. So, this adjusts for
#the "innate" productivity of each species.

#What about plots of different compositions?
with(df,plot(Comp,NBE,col=comp.cols))
m3<-lm(NBE~Comp,data=df);summary(m3)
anova(m3)
m3.df<- HSD.test(m3,"Comp", group=TRUE,console=TRUE)

#Interesting! Which four plots have the highest overyielding according to
#the post-hoc test? Given this, what do you expect you'l find when you
#assess the dependence of overyielding on species richness?

with(df,plot(SR,NBE)) #Note: it doesn't make sense to plot NBE of monocultures
m4<-lm(NBE~SR,data=df);summary(m4)
anova(m4)
m4.df<- HSD.test(m4,"SR", group=TRUE,console=TRUE)

#Take a moment to compare the output of model 4 to that of model 2.
#This helps explain the importance of monocultural controls in biodiversity
#experiments.

###Exercise 2

##Question 3: How do different levels of species richness compare
# in terms of complementarity and selection?

#The tools you use here should now feel familar: 
  #first, analyze graphically;
  #then make a linear model and assess it with ANOVA
  #if the ANOVA is significant, use post-hoc testing

#First, complementarity effects:
with(df,plot(SR,CE))
m5<-lm(CE~SR,data=df);summary(m5)
anova(m5)
m5.df<- HSD.test(m5,"SR", group=TRUE,console=TRUE)

#Then, selection effects:
with(df,plot(SR,SE))
m6<-lm(SE~SR,data=df);summary(m6)
anova(m6)
m6.df<- HSD.test(m6,"SR", group=TRUE,console=TRUE)

#You can even plot CE and SE together
with(df,plot(SR,CE,col="blue"))
with(df,points(SR,SE,col="red"))
abline(h=0) #Just to make it easier to tell positive from negative

#How do CE and SE compare to each other and NBE (overyielding)?
#What does positive CE mean? What does negative CE mean? What about positive
  #and negative values of SE? (This can be confusing.)

##Question 4: Do you find evidence of transgressive overyielding?

#To ask this question, let's return to the plot from Question 1:
with(df,plot(SR,d_Y,ylim=c(-0.05,0.25)))
#and add a horizontal line:
abline(h=0)

#Are the least productive (or even average) polycultures more productive 
#than the most productive monocultures?

#(If you are still unconvinced, you could code all monocultures as "0"
#and all polycultures as "1" and do a t-test...)

###Exercise 3

##Question 5: Which dimension of biodiversity - taxonomic (species richness),
      #phylogenetic, or functional diversity best predicts overyielding
      #in productivity in the FAB experiment?

#To address this question, we'll see how much of the variability in 
#overyielding (NBE) is explained by each dimension. For a univariate
#regression model, we can just use R^2 from the linear model output
#to do model comparison.
m4<-lm(NBE~SR,data=df);summary(m4) #This is our old friend from question 2.
m7<-lm(NBE~PSV,data=df);summary(m7) #What about phylogenetic diversity?
m8<-lm(NBE~FDis,data=df);summary(m8) #Or functional diversity?

#So, if you had to choose one, which dimension of diversity would you say
#best predicts overyielding in stem growth?

#What do you make of the differences in R^2 values for each dimension?

#(You can also do this analysis with CE or SE as the dependent variable.)
