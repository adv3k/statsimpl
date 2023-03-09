require'j9.4-user/Projects/fredjpi/fredjpi.ijs'
require'plot'
require'debug/dissect'
require'stats'
test1=:getseriesobsdateval 'GDP';'1961-01-31';'2023-01-31';'100000';'0';'asc';'lin';'a'
test2=:getseriesobsdateval 'GNPCA';'1961-01-31';'2023-01-31';'100000';'0';'asc';'lin';'a'
test3=:getseriesobsdateval 'CPIAUCSL';'1961-01-31';'2023-01-31';'100000';'0';'asc';'lin';'m'
pps=: 9!:11
pps 9

test=:simregress test2
test
$1}"1 test
${:"1 test
(1+i.#test2) corr ({:"1 test2)
(1+i.#test2) regression ({:"1 test2)
(1}"1 test) rsq ({:"1 test)
NB. specifically for time series
