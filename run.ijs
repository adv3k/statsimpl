require'j903-user/Projects/fredjpi/fredjpi.ijs'
require'debug/dissect'
test1=:getseriesobsdateval 'GDP';'1961-01-31';'2023-01-31';'100000';'0';'asc';'lin';'a'
test2=:getseriesobsdateval 'GNPCA';'1961-01-31';'2023-01-31';'100000';'0';'asc';'lin';'a'
test3=:getseriesobsdateval 'CPIAUCSL';'1961-01-31';'2023-01-31';'100000';'0';'asc';'lin';'m'
pps=: 9!:11
pps 9
NB.((y_hat test1),.(}."1 test1));ssd test1
NB.(cov test3);(var test3);((cov test3)%(var test3))

NB.summation, of x squared
sxsq=:(+/(1+i.#test3)^2)
NB.squared the sum of x, divided by n
sqsxdn=:(1%#test3)*((+/(1+i.#test3))^2)
vartest=:sxsq;sqsxdn;sxsq-sqsxdn

NB.summation, of x times y
sxty=:+/(1+i.#test3)*(}."1 test3)
NB.summation x times summation y, divided by n
sytsxdn=:(1%#test3)*((+/}."1 test3)*(+/1+i.#test3))

covtest=:sxty;sytsxdn;sxty-sytsxdn
|:(covtest,.vartest)
(>{:covtest)%(>{:vartest)
]x_bah=:(+/ % #)(1+i.#test3)
]y_bah=:(+/ % #)(}."1 test3)
num=:+/((1+i.#test3)-x_bah)*((,}."1 test3)-y_bah)

