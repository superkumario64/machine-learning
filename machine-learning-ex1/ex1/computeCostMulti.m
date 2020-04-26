function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

%fprintf('\nprint X(1:10, :)\n');
%X(1:10, :)
%fprintf('\nprint y(1:10)\n');
%y(1:10)
%fprintf('\nprint theta\n');
%theta
%fprintf('\nprint X*theta-y\n');


XThetaMinusY = (X*theta)-y;
trasposedProduct = XThetaMinusY' * XThetaMinusY;
J = (1/(2*m)) * trasposedProduct;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.



% You need to return the following variables correctly 



% =========================================================================

end
