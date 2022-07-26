# Mecha_Car_Statistical_Analysis

## Overview of Project

In This challenge, we are slated to discover and analyze the following:

  - Perform multiple linear regression analyses to identify which variable in the dataset predicts the MPG(Miles Per Gallon) of the MechaCar prototypes
  - Collect summary statistics on the pounds per square inch(PSI) of the suspension coils from the manufacturing lots
  - Run t-tests to determine if the manufacturing lots are statistically different from the mean population
  - Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers.  For each statistical analysis, write a summary of the findings.


## Deliverable 1:  Linear Regression to predict MPG

Using the MechaCar Dataset(CSV), I designed a linear model that predicts the MPG of MechaCar prototypes, using serval variables listed below:

  - Vehicle Length
  - Vehicle Weight
  - AWD
  - MPG(Miles Per Gallon)
  - Spoiler Angle
  - Ground Clearance
  
### Summary

  - Upon running a correlation analysis across the dataset, the findings suggest that non-random variables of mpg values are Vehicle Length and Ground Clearance
 
![image](https://user-images.githubusercontent.com/8845050/180059965-9a140e71-153a-4015-b3c2-02b102fcbdcf.png)

  - the linear model I used has a significance(p-value) of (5.35e-11 or 0.0000000000535).  Since that is much lower than 0.05, we reject the null hypothesis.

  - The linear model predicts MPG efficiently because the R-Squared value(how well the model explains the data...the closer to 1, the better the explanation) of 71% indicates a rather substantial model fit for explaining the data. 

![image](https://user-images.githubusercontent.com/8845050/180063170-e6886f12-f9df-4f7c-9cb4-4311acdc5e19.png)

Below is all the analysis, in order, to achieve Deliverable 1:

![Deliverable1](https://user-images.githubusercontent.com/8845050/180066173-7915dca7-53f6-4971-8367-1a85eac1eed6.PNG)

## Deliverable 2: Create Visualization for the Trip Analysis

Using the Suspension_Coils.csv file, the creation of summary statistics table is required to show the suspension coil's PSI continuous variable across all manufacturing lots.  This will encompass the Mean(Average), Median, Variance, and Standard Deviation of each lot.

### Summary Statistics on Suspension Coils

  - Based on the variance, MechaCar specifications desire that coils must NOT exceed 100 pounds per square inch(PSI) in variance.  Lots 1 and 2 show a minimal variance and are under the maximum weight, but lot 3 shows a variance of 170+, as well as a mean of 1496, which is lower than 1500 for respective lots 1 and 2.  Lot 3 is clearly filled with rejects and would be discarded from production.

![image](https://user-images.githubusercontent.com/8845050/180251836-fa326e84-1d53-4f55-8ca3-0ba3b0938862.png)
![image](https://user-images.githubusercontent.com/8845050/180252060-0d2334e1-5b67-4ce3-954e-14c2be90f7dd.png)
![image](https://user-images.githubusercontent.com/8845050/180258941-653b7376-c787-4dca-8218-9380c3e37a7f.png)

## Deliverable 3:  T-Tests on Suspension Coils

For Deliverable 3, I performed t-tests on all 3 distinguishing group segments(by Manufacturing Lot), and each lot individually are statistically different, with LOT 3 being the most variant.

### Summary of t-tests

 - Looking at the data for each segment, this is when you see a divurgence from the population mean of 1500.
    - The t-test of Lot 1 has a mean of 1500 PSI.
    - The t-test of Lot 2 has a mean of 1500.2 PSI
    - The t-test of Lot 3 has a mean of 1496.14 PSI  (This one stands out!)

![Deliverable3](https://user-images.githubusercontent.com/8845050/180263244-00b95af7-5493-48ad-bffd-5337c366c201.PNG)


## Deliverable 4: Design Study Comparing the MechaCar to the Competition

For this last deliverable, I designed a statistical study to compare performance of the MechaCar vehicles against the performance from other manufacturers, i.e. Ford, Audi, Honda, Chevrolet, etc.

### Study Design: MechaCar vs Competition

  - What Metrics would be used to test?
     - Dependent Variable:  Selling Price of the car
     - Independent Variable(s): MPG, Safety, Maintenance, Resale Value, Transmission, Car Type(Sedan, Coupe, SUV)

  - What are the null and alternative hypotheses? 
     - Null:  The price of MechaCar can be predictably based on key performance indicators/factors
     - Alternative: The price of MechaCar can NOT be predictably based on key performance indicators/factors

  - What statistical test would I used to test the hypothesis? Why?
     - A multiple linear regression would be the first choice(to check the variance of the dependent variable against combination of independent variables), with several ad-hoc t-tests to compare factor populations against sample populations, and even an ANOVA, which will touch upon statistical differences between the distribution means from multiple sampless.
  - What data is needed to run a statistical test?
     - For the statistical test to be valid, we would need to compare similar data points to ensure with confidence that the competition comparison is valid as well.  This can be done by quantifying categorical data, or standardizing values into bins, etc.  Quantifying categorical data, i.e. Chi-Squared relevance, can also be a proponent to this.


## Resources
- R
- RStudio
- tidyverse
- Python








