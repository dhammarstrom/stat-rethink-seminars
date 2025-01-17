data {
  int<lower=0> N;
  array[N] real h;
}
parameters {
  real mu;
  real<lower=0> sigma;
}
model {
  mu ~ normal(178, 20);
  sigma ~ normal(0,10);
  h ~ normal(mu, sigma);
}
