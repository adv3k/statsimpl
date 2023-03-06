NB. various utilities used within the package


NB. START OF CHECKING FIT UTILS BLOCK

NB. variance
NB. measures the spread of any set of values about their mean
var=: 3 : 0
+/(y - ((+/ % #) y))^2
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
+/(x - ((+/ % #)x))*(y - ((+/ % #)y))
)

NB. sample correlation
corr=: 3 : 0
(x cov y)%(%:(var x)*(var y))
)

NB. correlation coefficient squared
rsq=: 3 : 0

)
NB. END OF CHECKING FIT UTILS BLOCK
