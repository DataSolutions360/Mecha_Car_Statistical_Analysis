#MODULE 15 - R

#Deliverable 1: Linear Regression to Predict MPG
MPG <- read.csv("MechaCar_mpg.csv")
head(MPG)
lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MPG )
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MPG ))

#Deliverable 2: Summary Statistics on Suspension Coils
Coils <- read.csv("Suspension_Coil.csv")
head(Coils)


stats <- summary(Coils)
summary(lm(PSI ~ Manufacturing_Lot,data=Coils)) 
summary(Coils)
summary(Coils$PSI)
summary(Coils1$PSI)
summary(Coils2$PSI)
summary(Coils3$PSI)
summary(Coils3)
summary(lm(PSI ~ Manufacturing_Lot,data=Coils3)) 
var(Coils1$PSI)
var(Coils2$PSI)
var(Coils3$PSI)
#Deliverable 3: T-test on Suspension Coils

Coils <- read.csv("Suspension_Coil.csv")
head(Coils)
Coils1 <- subset(Coils,Manufacturing_Lot=='Lot1' )
Coils2 <- subset(Coils,Manufacturing_Lot=='Lot2' )
Coils3 <- subset(Coils,Manufacturing_Lot=='Lot3' )

t.test(Coils1$PSI,mu=1500)
t.test(Coils2$PSI,mu=1500)
t.test(Coils3$PSI,mu=1500)

summary(Coils$PSI)
summary(Coils1$PSI)
summary(Coils2$PSI)
summary(Coils3$PSI)

#Deliverable 4: Design a Study Comparing the MechaCar to the Competition

MPG <- read.csv("MechaCar_mpg.csv")
head(MPG)
#I want to see if there are any highly correlated(or negatively correlated) factors within the data
cor(MPG)

avg<-sum(MPG$vehicle_length)/nrow(MPG)
avg
###################################################################

#15.6.4 Use the Two-Sample t-Test to compare samples

#import dataset
#select only data points where the year is 1999
#select only data points where the year is 2008
#compare the mean difference between two samples

mpg_data <- read.csv('mpg_modified.csv') 
mpg_1999 <- mpg_data %>% filter(year==1999) 
mpg_2008 <- mpg_data %>% filter(year==2008) 
t.test(mpg_1999$hwy,mpg_2008$hwy,paired = T) 

####################################################################

library(dplyr)
count(Coils, PSI)

#nominal / Categorical & Ordinal scale variables
library(dplyr)

count(Coils, Manufacturing_Lot)
count(Coils, PSI)
summary(Coils)
summary(Coils$PSI)


xtabs(~PSI + Manufacturing_Lot, data=Coils)


#15.7.2 Return to Linear Regression
?lm()
head(mtcars)

#create linear model
#summarize linear model
lm(qsec ~ hp,mtcars) 
summary(lm(qsec~hp,mtcars)) 


#create linear model
#determine y-axis values from linear model

model <- lm(qsec ~ hp,mtcars) 
yvals <- model$coefficients['hp']*mtcars$hp +
  model$coefficients['(Intercept)'] 


#import dataset into ggplot2
#plot scatter and linear model
plt <- ggplot(mtcars,aes(x=hp,y=qsec))
plt + geom_point() + geom_line(aes(y=yvals), color = "red") 

#generate multiple linear regression model
lm(qsec ~ mpg + disp + drat + wt + hp,data=mtcars) 

#generate summary statistics
summary(lm(qsec ~ mpg + disp + drat + wt + hp,data=mtcars)) 