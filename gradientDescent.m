function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    j = 1:m;
    t1 = sum((theta(1) + theta(2) .* X(j,2)) - y(j)); 
    t2 = sum(((theta(1) + theta(2) .* X(j,2)) - y(j)) .* X(j,2)); 
    
    theta(1) = theta(1) - (alpha/m) * (t1);
    theta(2) = theta(2) - (alpha/m) * (t2);
    
    J_history(iter) = computeCost(X, y, theta); 

end

end
