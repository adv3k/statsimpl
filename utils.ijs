NB. various utilities used within the package


NB. START OF CHECKING FIT UTILS BLOCK

NB. variance
NB. measures the spread of any set of values about their mean
var=: 3 : 0
(+/(y - ((+/ % #) y))^2)%#y
)

NB. standard deviation
NB. square root of variance
std=: 3 : 0
%: var y
)
NB. sample covariance
NB. covariance and variance are identical if used as cov(x,x) rather than cov(x,y)
NB. shows whether a higher value of x is associated with a higher/lower value of y
cov=: 4 : 0
(+/(x - ((+/ % #)x))*(y - ((+/ % #)y)))%#y
)

NB. sample correlation
NB. x is x values, y is y values
NB. determines pos/neg association
corr=: 4 : 0
(x cov y)%(%:(var x)*(var y))
)

NB. correlation coefficient squared
NB. coefficient of determination
NB. x is y_hat, y is real values
NB. percent given is the variation in the y values accounted for by the x values
rsq=: 4 : 0
1-(+/(y-x)^2)%(+/(y-((+/ % #)y))^2)
)

NB. END OF CHECKING FIT UTILS BLOCK



NB. START OF MISC STATS BLOCK

NB. returns pct change from one data point to the next
chg=: 4 : 0
((y-x)%x)*100
)

NB. percent change between data points
NB. returns array of percentage points
NB. figure out how _ ".S:0 works
pctchg=: monad define
2 chg/\ _ ".S:0 {:"1 y
)

NB. END OF MISC STATS BLOCK
