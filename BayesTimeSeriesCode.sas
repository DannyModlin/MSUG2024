*Creating AR(4) data set;

%let N = 500;
%let p = 4;
%let sigma=2;
%let constant = 0;
data ar4(keep= t y);
  call streaminit(12345);
  array phi phi1 - phi&p (.8, -.64, .512, -.4096);
  array yLag   yLag1 - yLag&p;
  do j = 1 to dim(yLag);
    yLag[j] = 0;
  end;
  constant=&constant;
  do t = -100 to &N;
    e = rand('normal',0,&sigma);
    y = e;
    do j = 1 to dim(phi);
      y = y + phi[j] * yLag[j];
    end;
    y=y+constant;
    if t > 0 then output;
    do j = dim(yLag) to 2 by -1;
      yLag[j] = yLag[j-1];
    end;
    yLag[1] = y;
  end;
run;


ods graphics on;
proc sgplot data=ar4;
  series x=t y=y;
run;


*AR(4) Analysis;

proc mcmc data=ar4 nmc=100000 seed=100 nthreads=8 propcov=quanew
       outpost=ar4example;
  parms phi_1 phi_2 phi_3 phi_4;
  parms sigma2 1;
  parms Y_0 Y_1 Y_2 Y_3;
  prior phi_:~normal(0,var=1000);
  prior sigma2 ~ igamma(shape = 3/10, scale = 10/3);
  prior Y_: ~ n(0, var=1000 );
  mu=phi_1*y.l1 + phi_2*y.l2 + phi_3*y.l3 + phi_4*y.l4;
  model y~normal(mu, var=sigma2)
        icond=(Y_3 Y_2 Y_1 Y_0);
*  preddist outpred=AR4outpred statistics=brief;
*  ods output PredSumInt=AR4PredSumInt;
run;

proc contents data=ar4example;
run;

*Creating Coal Data Example;

data UKcoal;
  input coal year quarter @@;
  t=_N_;
  C=log(coal/1000);
  datalines;
303 1960 1 169 1960 2 152 1960 3 257 1960 4
247 1961 1 189 1961 2 146 1961 3 220 1961 4
248 1962 1 195 1962 2 141 1962 3 235 1962 4
278 1963 1 167 1963 2 150 1963 3 261 1963 4
244 1964 1 174 1964 2 104 1964 3 228 1964 4
243 1965 1 170 1965 2 113 1965 3 219 1965 4
237 1966 1 138 1966 2 114 1966 3 208 1966 4
190 1967 1 157 1967 2 93  1967 3 182 1967 4
183 1968 1 106 1968 2 86  1968 3 144 1968 4
226 1969 1 128 1969 2 62  1969 3 130 1969 4
169 1970 1 94  1970 2 91  1970 3 188 1970 4
148 1971 1 114 1971 2 62  1971 3 139 1971 4
104 1972 1 99  1972 2 76  1972 3 122 1972 4
107 1973 1 76  1973 2 51  1973 3 111 1973 4
95  1974 1 71  1974 2 63  1974 3 107 1974 4
65  1975 1 62  1975 2 39  1975 3 80  1975 4
86  1976 1 57  1976 2 37  1976 3 79  1976 4
83  1977 1 59  1977 2 42  1977 3 89  1977 4
84  1978 1 59  1978 2 43  1978 3 73  1978 4
90  1979 1 56  1979 2 40  1979 3 75  1979 4
80  1980 1 45  1980 2 32  1980 3 73  1980 4
72  1981 1 46  1981 2 38  1981 3 78  1981 4
77  1982 1 49  1982 2 41  1982 3 77  1982 4
78  1983 1 49  1983 2 34  1983 3 72  1983 4
68  1984 1 51  1984 2 23  1984 3 42  1984 4
72  1985 1 49  1985 2 39  1985 3 64  1985 4
63  1986 1 43  1986 2 45  1986 3 56  1986 4
;


proc sgplot data=UKcoal;
  title "Quarterly UK Coal Consumption (1960-1986)";
  series y=coal x=t;
  yaxis label="Coal consumption";
  xaxis label="time";
run;
title;

proc sgplot data=UKcoal;
  title "Quarterly UK Coal Consumption (1960-1986)";
  series y=c x=t;
  yaxis label="Logarithm of (coal consumption/1000)";
  xaxis label="time";
run;
title;

data UKcoal;
  set UKcoal;
  z=c;
  if year>1984 then c=.;
run;


*Dynamic Linear Model;

proc mcmc data=UKcoal nmc=100000 seed=123456 outpost=posterior propcov=quanew;
  parms alpha0;
  parms mu0;
  parms s0 s1 s2;
  parms theta1;
  parms theta2;
  parms theta3;
  parms theta4;
  parms theta_phi;
  parms phi;
  prior phi~normal(0,var=exp(theta_phi));
  prior alpha0~normal(0,var=theta2);
  prior mu0~normal(0,var=100);
  prior s:~normal(0,var=theta3);
  prior theta:~igamma(shape = 3/10, scale = 10/3);
  random alpha~normal(phi*alpha.l1,var=exp(theta2)) subject=t icond=(alpha0);
  random s~normal(-s.l1-s.l2-s.l3,var=exp(theta3)) subject=quarter icond=(s2 s1 s0);
  random mu~normal(mu.l1 + alpha.l1,var=exp(theta1)) subject=t icond=(mu0);
  x=mu + s;
  model c~normal(x,var=exp(theta4));
  preddist outpred=TVCoutpred statistics=brief;
  ods output PredSumInt=TVCPredSumInt;
run;


data forecast;
  merge UKcoal TVCPredSumInt;
run;

proc sgplot data=forecast;
  series x=t y=c / lineattrs=(color=red);
  series x=t y=z / lineattrs=(color=red pattern=dot);
  series x=t y=mean / lineattrs=(color=blue pattern=dash);
  band x=t upper=hpdupper lower=hpdlower / transparency=.5;
run;

proc contents data=posterior;
run;
