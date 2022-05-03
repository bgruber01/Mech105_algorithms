# Linear Regression
The Linear Regression algorithm is based on supervised learning. It performs a regression task. Regression models a target prediction value based on independent variables. It is mostly used for finding out the relationship between variables and forecasting. In this algorithm the first thing that occurs is that the x values and y values are sorted from smallest to largest. 
The algorithm then sets interquartile ranges based on the date and then uses these interquartile ranges to check for any outliers in the data set. If outliers are found they are thrown out of the data set. 
The algorithm then computes linear regression value using the linear regression formula. 
The Y-intercept of the regression line is then computed using the mean of y-values and mean of the slope of the regression line. 
Finally the R^2 value is calculated to determine the accuracy of the regression line computed. 
Inputs:
* array of x values
* Array of y values
Outputs: 
* A1 (value of slope of regression line)
* A0 (Y-intercept of regression line)
* func (function in form A1x+A0)
* R Squared value

Limitations: if the array of x values is not the same size as array of y values then linear regression cannot be computed. 

