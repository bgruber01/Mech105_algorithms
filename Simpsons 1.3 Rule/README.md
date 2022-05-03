# Simpson's 1/3 Rule
This algorithm is a numerical evaluation of integral by Simpson's 1/3 Rule.
This method is based on Newton's Cote Quadrature Formula and the Simpson 1/3 rule is obtained when we put the value of n = 2 in this formula.

Inputs: 
* x = the vector of equally spaced independent variable
* y = the vector of function values with respect to 

Outputs:
* I = the numerical integral calculated

Limitations: 
* If the length of x is not equal to the length of y = invlaid inputs sizes 
* If a function is highly oscillatory or lacks derivatives at certain points, then the above rule may fail to produce accurate results. If this is the case, then a composite Simpsons rule might be necessary to compute the integral. 
