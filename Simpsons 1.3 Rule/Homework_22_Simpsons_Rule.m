function [I] = Homework_22_Simpsons_Rule(~, y)
% Numerical evaluation of integral by Simpson's 1/3 Rule
% Inputs
%   x = the vector of equally spaced independent variable
%   y = the vector of function values with respect to 
x = [140 141 142 143 144 145 146 147 148 149];
y = [15.72 15.53 15.19 16.56 16.21 17.39 17.36 17.42 17.60 17.75];
% Outputs:
%   I = the numerical integral calculated

I = 0;
if length(x) ~= length(y)
    error('inviald input sizes')
end
for L = 1:length(x)-1
    if x(L+1)-x(L) ~= ((x(length(x))-x(1))/(length(x)-1))
        error('x is not equally spaced')
    end
end
if rem(length(x)-1,2) ~= 0
    for i = 1:2:length(x)-2
        I = I+(((x(length(x))-x(1))/(3*(length(x)-1)))*(y(i)+4*y(i+1)+y(i+2)));
    end
    I = I+(((x(length(x))-x(length(x)-1))/2)*(y(length(x))+y(length(x)-1)));
else
    for  i = 1:2:length(x)-2
        I = I+(((x(length(x))-x(1))/(3*(length(x)-1)))*(y(i)+4*y(i+1)+y(i+2)));
    end
end
end
