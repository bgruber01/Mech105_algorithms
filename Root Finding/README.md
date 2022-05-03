# Root Finding 
## False Postion Method 
False Position finds the root of a function using the false position method. False position is designed for finding roots which retains the prior estimate for which the function value has opposite sign from the function value at the current best estimate of the root. That way the false position method will keep the root bracketed as it continues to get a better and better guess at the root(s) of the function.  

Inputs: 
* func - the function being evaluated
* xl - lower guess
* xu - upper guess
* es - desired relative error (default to 0.0001%)
* maxit - the maximum number of iterations to use (default to 200)
* varargin - any additional parameters used by the function

Outputs:
* root - the estimated root location
* fx - the function evaluated at the root location
* ea - the approximate relative error (%)
* iter - how many iterations were performed

Limitations: If the func(xl).func(xu) > 0 then this means that there is not a sign change and the guesses do not bracket the root, therefore  false position cannot be performed 

