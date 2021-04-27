x = 730;    %Number of hours
alpha = 800;
beta = 4.1;

% Evaluate Weibull CDF at 730 (time of failure)
% using alpha and beta as declared
prob = wblcdf (x , alpha , beta );
disp(prob);     % Print probability
