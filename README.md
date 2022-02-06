# MechaCar_Statistical_Analysis

The purpose is to perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes; collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots; run t-tests to determine if the manufacturing lots are statistically different from the mean population; design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, write a summary interpretation of the findings.

## Linear Regression to Predict MPG

![Deliverable 1 SS](https://user-images.githubusercontent.com/76926631/152697266-9dbaf8a6-ff8e-4e7d-b78a-5ba222236491.PNG)

The vehicle length, and vehicle ground clearance are statistically likely to provide non-random amounts of variance to the model. The vehicle length and vehicle ground clearance have a significant impact on miles per gallon on the MechaCar prototype. The vehicle weight, spoiler angle, and All Wheel Drive (AWD) have p-Values that indicate a statistically significant variance with the dataset.

The p-Value: 5.35e-11, is statistically insignificant. This indicates there is sufficient evidence to reject our null hypothesis, which further indcates that the slope of this linear model is not zero.

This linear model has an r-squared value of 0.7149, which means that approximately 71% of all mpg predictions will be determined by this model. Relatively speaking, his multiple regression model does predict mpg of MechaCar prototypes effectively.

![Deliverable 1 SS2](https://user-images.githubusercontent.com/76926631/152697378-e7fb0d70-cca3-4e09-9b63-1ac121bd43bb.PNG)


## Summary Statistics on Suspension Coils

![total summary](https://user-images.githubusercontent.com/76926631/152697408-bc914501-3b3a-4334-a036-b21c40bd058e.PNG)

If we look at the total summary, we see the average PSI is within the 100 PSI requirement at 62.29.

![Lot Summary](https://user-images.githubusercontent.com/76926631/152697411-a209de45-0f42-49a6-b182-70fc1fbd6810.PNG)


Review of the individual lots show that Lots 1 and 2 are wihtin the 100 PSI limit per standard deviation, but Lot3 may hold outlier data, which shows a higher standard deviation of 170. 

## T-Tests on Suspension Coils

![Ttest](https://user-images.githubusercontent.com/76926631/152697763-f50dcd9d-077b-45a6-b897-8afc75b94a94.PNG)

## Study Design: MechaCar vs Competition

# Hypothesis
After determining which factors are key for the MechaCar's genre:

-Null Hypothesis (Ho): MechaCar is priced correctly based on its performance of key factors for its genre.

-Alternative Hypothesis (Ha): MechaCar is NOT priced correctly based on performance of key factors for its genre.

# Statistical Testing

A multiple linear regression should be used to determine the factors that have the highest correlation and predictability with the list selling price as the dependent variable; which combination has the greatest impact on price.
