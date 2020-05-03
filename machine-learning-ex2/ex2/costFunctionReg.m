function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

h = sigmoid(X * theta);
J = ((1/m) * ((-y' * log(h)) - ((1 - y)' * log(1 - h))));
sum_theta_squared = 0;
for j = 2:size(theta,1)
    sum_theta_squared = sum_theta_squared + (theta(j)^2);
end
J = J + ((lambda/(2*m)) * sum_theta_squared);


% theta = theta(2:end);
% fprintf('size theta oh yeah\n');
% size(theta)

% fprintf('theta oh yeah\n');
% theta
% pause;
theta(1) = 0;
grad = (1/m) * (X'*(h - y) + lambda*theta);




% =============================================================

end
