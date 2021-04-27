% Generate standard normal variables for x and y
% Standard normal => mu = 0, sigma = 1
n = 10000; mu = 0; sigma = 1;
X = normrnd(mu,sigma, [1 n]);
Y = normrnd(mu,sigma,[1,n]);
% Generate random variable R using X and Y
R = sqrt(X.^2 + Y.^2);
cdfplot(R);
% Axis labels
xlabel(‘R’);
ylabel(‘Cumulative Probability’);
grid on;
title(‘Empirical CDF of data for R’);
