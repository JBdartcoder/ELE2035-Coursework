% Determine number of elements in y
n = numel(y);

% Determine the mean of dataset y
x_bar = mean(y);

% Declare known values: sd, sigma and null hypothesis mean, mu
sigma = 2;
mu = 0;

% Determine z-value
z_0 = (x_bar - mu)/(sigma / sqrt(n));

% Determine p-value
p = normcdf(z_0,0,1);
