% Calculate parameters using appropriate functions
C = cov(x, y);              % Covariance
rho = corrcoef(x, y);       % Correlation coefficient

% Display results
disp('Covariance: ');
disp(C);
disp('Correlation coefficient: ');
disp(rho);

% Plot scattergraph of x vs y
scatter(x, y);
lsline;                     % Plot line of best fit
legend('Sample Data', 'Best Fit Line');
title('Plot of unknown dataset x against dataset y')
xlabel('x');
ylabel('y');

grid on;
