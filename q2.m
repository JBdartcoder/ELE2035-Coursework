% Calculate parameters using appropriate functions
M = mean(x);        % Mean
V = var(x);         % Variance
r = iqr(x);         % Interquartile Range
S = skewness(x);    % Skewness
K = kurtosis(x)     % Kurtosis

% Display results
disp(M);
disp(V);
disp(r);
disp(S);
disp(K);
