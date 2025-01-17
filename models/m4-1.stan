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
  sigma ~ uniform(0.1,50);
  h ~ normal(mu, sigma);
}
