function [root, fx, ea, iter] = Homework_11_algorithim_development(func, xl, xu, es, maxit, varargin)
%falsePosition finds the root of a function using false position method
% Inputs:
% func - the function being evaulated
% xl - lower guess
% xu - upper guess
% es - desired relative error (default to 0.0001%)
% maxit - the maximum number of iterations to use (defualt to 200)
% varargin - any additional paramters used by the fucntion
% Outputs:
% root - the estmiated root location
% fx - the function evaualted at the root location
% ea - the approximate relative error (%)
% iter - how mant iterations were performed

func = @(x) x.^3;
xl = -1;
xu = 1;
es = 0.0001;
maxit = 200;
% if nargin < 3
%     error('3 input arguments required');
% end

if func(xl) * func(xu) > 0 
    error('No sign Change, Does not bracket root');
elseif func(xl)*func(xu) == 0
    if func(xl) == 0
    disp('xl is the root')
    else
    disp('xu is the root')
    end
end

xr = xu - (func(xu)*(xl-xu))/((func(xl)-(func(xu))));
iter = 1;
ea = abs((xr-xu)/xr)*100;
if func(xr) == 0
    ea = 0;
end

while iter <= maxit && ea > es
    xrold = xr;
    xr = (xl+xu)/2;
    iter = iter + 1;
    if xr ~= 0 
        ea = abs((xr-xrold)/xr)*100;
    end
    if func(xl)*func(xr) < 0
        xu = xr;
    elseif  func(xl)*func(xr) > 0
        xl = xr;
    else
        ea = 0;
    end
    if ea <= es || iter >= maxit
        break
    end
end

root = xr;
fx = func(xr);
ea = ea;
iter = iter;
end
