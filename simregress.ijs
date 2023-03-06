NB. CHECK SIMPLE REGRESSION WITH MULTIPLE DATASETS
NB. ADD MORE FUNCTIONALITY TO THE SIMPLE REGRESSION


NB. simple regression using ordinary least squares
NB.       y_hat --> beta0 + (beta1 * x_i)
NB.       formula (beta 0) --> y_bar - beta1*x_bar
NB.       formula (beta 1) --> (+/(x_i-x_bar)*(y_i-y_bar))%(+/(x_i-x_bar)^2)
NB. formula is based off https://bookdown.org/ripberjt/qrmbook/linear-estimation-and-minimizing-error.html#deriving-ols-estimators 

simregress=: 3 : 0
NB. x/y bar
x_bar=:(+/ % #)(1+i.#y)
y_bar=:(+/ % #)(,}."1 y)
NB. beta 0/1 values, formulas above
NB. variance and covariance formulas defined in utils.ijs
bt1=:((1+i.#y) cov (,}."1 y))%(var (1+i.#y))
bt0=: y_bar-bt1*x_bar
NB. y hat and then stitching y hat with the time data
y_hat=:bt0+bt1*(1+i.#y)
(_1}."1 y),.y_hat,.(}."1 y)
)
