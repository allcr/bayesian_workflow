data {
   int<lower=0> J;
   vector[J] x;
   array[J] int<lower=0> n; 
   array[J] int<lower=0,upper=n> y;
}
parameters {
  real a;
  real<lower=0> b;
}

model{
  {a,b} ~ normal(0,5);
  y ~ binomial_logit(n,a+b*x);
}
