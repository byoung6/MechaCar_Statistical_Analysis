#Deliverable 1: Linear Regression to Predict MPG
#Load necessary packages
library(dplyr)
library(tidyverse)
#Import and Read the CSV File as DataFrame
Car_Data <- read.csv('MechaCar_mpg.csv')
head(Car_Data)
#generate multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data =Car_Data)
#generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data =Car_Data)) 

#Additional Step: eliminate the independent variables that have little impact on predicting mpg to see impact:
lm(mpg ~ vehicle_length + ground_clearance, data=Car_Data)
summary(lm(mpg ~ vehicle_length + ground_clearance, data=Car_Data))

#Deliverable 2: Create Visualizations for the Trip Analysis

#Import and Read the CSV File as DataFrame
Coil_Data <- read.csv('Suspension_Coil.csv')
head(Coil_Data)

#mean, median, variance, and standard deviation of the suspension coil's PSI column.
Mean = mean(Coil_Data$PSI)
Median=median(Coil_Data$PSI)
Variance=var(Coil_Data$PSI)
SD = sd(Coil_Data$PSI)

#Total_Summary Data Frame
total_summary <- Coil_Data %>% summarize(Mean_PSI=mean(PSI),
                                           Median_PSI=median(PSI),
                                           Var_PSI=var(PSI),
                                           Std_Dev_PSI=sd(PSI),
                                           Num_Coil=n(), .groups = 'keep') 
#summary by lot
lot_summary <- Coil_Data  %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),
                                                                         Median_PSI=median(PSI),
                                                                         Var_PSI=var(PSI),
                                                                         Std_Dev_PSI=sd(PSI),
                                                                         Num_Coil=n(), .groups = 'keep') 

#box plot: PSI Whole lot
plt1 <- ggplot(Coil_Data,aes(y=PSI)) #import dataset into ggplot2
plt1 + geom_boxplot() #add boxplot

#box plot: PSI each indicdiual Lot
plt2 <- ggplot(Coil_Data,aes(x=Manufacturing_Lot,y=PSI)) #import dataset into ggplot2
plt2 + geom_boxplot()

#Deliverable 3: T-Tests on Suspension Coils

#t-test for all lots
t.test((Coil_Data$PSI),mu = 1500)

# t-test for each lot

t.test(subset(Coil_Data,Manufacturing_Lot =="Lot1")$PSI,mu = 1500)
t.test(subset(Coil_Data,Manufacturing_Lot =="Lot2")$PSI,mu = 1500)
t.test(subset(Coil_Data,Manufacturing_Lot =="Lot3")$PSI,mu = 1500)