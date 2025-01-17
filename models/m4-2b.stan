data {
  int<lower=0> N;
  array[N] real h;
}
parameters {
  real mu;
  real<lower=0> sigma;
}
model {
  mu ~ normal(178, 0.1);
  sigma ~ normal(0,10);
  h ~ normal(mu, sigma);
}
