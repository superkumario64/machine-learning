function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% fprintf('\nprint X(1,2)\n');
% X(1,2)
% fprintf('\nprint X(1:10,:)\n');
% X(1:10,:)
% fprintf('\nprint y\n');
% y(1:10)
% fprintf('\nprint y(1)\n');
% y(1)
% fprintf('\nprint y(2)\n');
% y(2)
% fprintf('\nprint y(3)\n');
% y(3)
% fprintf('\nprint theta(0)\n');
% theta(1)
% fprintf('\nprint m\n');
% m
% pause;

squaredSum = 0;
for i = 1:m
    squaredSum = squaredSum + ((theta(1) + theta(2) * X(i,2)) - y(i))^2;
end;

% You need to return the following variables correctly 
J = (1/(2*m)) * squaredSum;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.





% =========================================================================

end
