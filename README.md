# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

![This is a picture showing the summary of a linear regression model](https://github.com/hmpowell/MechaCar_Statistical_Analysis/blob/main/linear_regression.png)

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
- Vehicle length, ground clearance, and the intercept provide non-random amounts of variance to the mpg values. The p-values for these variables are very very small which shows that it is statistically unlikely for them to provide random variance.

Is the slope of the linear model considered to be zero? Why or why not?
- The p-value for this model is very, very small; therefore, we know we can reject the null hypthesis that the slope is 0 (ie. there is no significant relationship between the dependent and independent variables).

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
- This model has an r-squared value of 0.7149, which means that around 71.5% of our data points fall in this model. It is not a perfect model; however, it will be accurate around 71.5% of the time, making it somewhat of an effective predictor.

## Summary Statistics on Suspension Coils

![This is a picture showing the mean, median, variance, and standard deviation for the cars across all lots](https://github.com/hmpowell/MechaCar_Statistical_Analysis/blob/main/total_summary.png)

![This is a picture showing the means, medians, variances, and standard deviations broken up into the 3 different lots](https://github.com/hmpowell/MechaCar_Statistical_Analysis/blob/main/lot_summary.png)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
- If the company is considering the variance across all the lots, as seen in the first picture, they are within this requirement because the variance is 62.3.
- However, when breaking down the data by lot, as seen in the second picture, it becomes quite apparent that Lot 3 has a significantly different variance than Lots 1 and 2. The variance for Lot 3 by itself is 170.3, which drives up the variance across all lots. The company might want to look more into what is happening at Lot 3 that is causing the variance in PSI to be drastically different than the other two lots.

## T-Tests on Suspension Coils

![This is a photo of the t-test results across all lots](https://github.com/hmpowell/MechaCar_Statistical_Analysis/blob/main/all_lot_t_test.png)

- Assuming a significance level of 0.05, the p-value for the t-test across all lots is 0.06, which is higher than that significance level; therefore, there is not sufficient evidence to reject the null hypthesis. This means that the population mean and the sample mean are statistically similar.

![This is a photo of the t-test results for Lot 1](https://github.com/hmpowell/MechaCar_Statistical_Analysis/blob/main/lot1_t_test.png)

- Assuming a significance level of 0.05, the p-value for the t-test using the Lot 1 subset (1) is higher than that significance level; therefore, there is not sufficient evidence to reject the null hypthesis. A p-value of 1 means that the sample mean is equal to the population mean.

![This is a photo of the t-test results for Lot 2](https://github.com/hmpowell/MechaCar_Statistical_Analysis/blob/main/lot2_t_test.png)

- Assuming a significance level of 0.05, the p-value for the t-test using the Lot 2 subset is 0.06, which is higher than that significance level; therefore, there is not sufficient evidence to reject the null hypothesis. This means that the population mean and the sample mean are statistically similar.

![This is a photo of the t-test results for Lot 3](https://github.com/hmpowell/MechaCar_Statistical_Analysis/blob/main/lot3_t_test.png)

- Assuming a significance level of 0.05, the p-value for the t-test using the Lot 3 subset is 0.04, which is lower than that significance level; therefore, we should reject the null hypothesis. This means that the population mean and the sample mean have a statistical difference.


## Study Design: MechaCar vs Competition

Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.

What metric or metrics are you going to test?

- MechaCar should do several two-sample t-tests to compare the means of cost, city fuel efficiency, and safety rating across similar models of their cars. These three items will give consumers a good look at the best car to use in cities across the manufacturers.

What is the null hypothesis or alternative hypothesis?

- H0: There is no statistical difference between MechaCar and the competition.
- HA: There is a statistical difference between MechaCar and the competition.

What statistical test would you use to test the hypothesis? And why?

- I would use six different two-sampe t-tests. We will not have the full population data for the competition, so this would allow us to compare two different samples to determine if there is a difference in the means of the three different metrics at MechaCar compared to the same three metrics in cars that the competitor produces in each of 3 car classes.

What data is needed to run the statistical test?

- To run this test, we would need access to the information from competitors with similar cars in each class to what MechaCar produces. For example, we would need the cost, city fuel efficiency, and safety ratings from competitors' SUVs, mid-size sedans, and minivans, in addition to the same information from Mechacar. This would give us an idea of how MechaCar compares in each car class for each metric versus the competition in the market for each of the 3 classes of cars.