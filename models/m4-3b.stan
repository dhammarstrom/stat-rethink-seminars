data {
  int<lower=0> N;  // Number of observations
  array[N] real h; // height data 
  array[N] real w; // weight data
  real xbar;       // average height
}
parameters {
  real a;
  real<lower=0> b;
  real<lower=0> sigma;
}
transformed parameters {
  array[N] real mu;
  for (i in 1:N) {
    mu[i] = a + b * (w[i] - xbar);
  }
}
model {
  a ~ normal(178, 20);
  b ~ lognormal(0,1);
  sigma ~ normal(0,10);
  h ~ normal(mu, sigma);
}
