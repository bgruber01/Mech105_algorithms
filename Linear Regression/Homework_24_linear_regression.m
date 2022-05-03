% Sort from Smallest to Largest
x = [1896 1900 1904 1908 1912 1916 1920 1924 1928 1932 1936 1940 1944 1948 1952 1956 1960 1964 1968 1972 1976 1980 1984 1988 1992 1996 2000 2004 2008 2012 2016];
y = [273.2 246 245.4 243.4 236.8 0 241.8 233.6 233.2 231.2 227.8 0 0 229.8 225.1 221.2 215.6 218.1 214.9 216.3 219.2 218.4 212.53 215.96 220.12 215.78 212.32 214.18 213.11 214.08 230];
if length(x) ~= length(y)
    error('Arrays must be same size')
end
[sortedY, sortOrder] = sort(y);
sortedX = x(sortOrder)
n = length(x);
Q1 = floor((n+1)/4);
Q3 = floor((3*n+3)/4);
IQR = sortedY(Q3)-sortedY(Q1);

% outlier
col = [];
for i =1:n
    if sortedY(i) < (sortedY(Q1)-1.5*IQR) || sortedY(i) > (sortedY(Q3)+1.5*IQR);
    col = [col,i];
    end
end
sortedX(:,col)=[];
sortedY(:,col)=[];

Xnew = sortedX
Ynew = sortedY

% linear Regression
sumXiYi = sum(Xnew.*Ynew);
sumXi = sum(Xnew);
sumYi = sum(Ynew);
sumXisqr = sum((Xnew).^2);
sqrsumXi = (sum(Xnew)).^2;
n = length(Xnew);

a1 = ((n*sumXiYi)-(sumXi*sumYi))/((n*sumXisqr)-sqrsumXi)

meanX = mean(Xnew);
meanY = mean(Ynew);

a0 = meanY-(a1*meanX);
slope = a1
intercpet = a0
func = @(x) (a1*x)+a0

fX = Xnew
fY = Ynew


% R- squared Value
meanY;
fun = func(Xnew);
SStot = sum((Ynew - meanY).^2);
SSres = sum((Ynew-(fun)).^2);
Rsquared = 1-(SSres/SStot)

