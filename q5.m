% Generate standard normal variables for x and y
% Standard normal => mu = 0, sigma = 1
n = 10000; mu = 0; sigma = 1; 
X = normrnd(mu,sigma, [1 n]);
Y = normrnd(mu,sigma,[1,n]);
% Generate random variable R using X and Y
R = sqrt(X.^2 + Y.^2)
% Use MATLAB's inbuilt function for ECDF
[f,x] = ecdf(R);
% Plot ECDF
plot(x, f, '.'); hold on;

% Use the MLE study above to estimate the popul. parameters
muHat = sum(R) / n;
Rbar = mean(R);
sigmaHat = sqrt( sum( (R - Rbar).^2) / n );
display(muHat);
display(sigmaHat);
% Plot the theoretical normal CDF using estimates
p = normcdf(x, muHat, sigmaHat);
plot(x, p, 'm'); hold on;
% Axis labels
xlabel('R');
ylabel('Cumulative Probability');
grid on;
title('Empirical and Theoretical CDF of data for R');
legend('Empirical (Simulated) Data', 'Theoretical Normal CDF');
