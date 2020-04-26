function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
num_features = size(X,2);

%fprintf('\nprint theta :\n');
%theta
%fprintf('\nprint y(1:5) :\n');
%y(1:5)
%fprintf('\nprint X(1:5,:) :\n');
%X(1:5,:)
%fprintf('\nprint j :\n');
%j
for iter = 1:num_iters

    % set sumTemps
    sumTemps = zeros(1, num_features);
    for j = 1:num_features
        % for each feature calculate the sumTemps(j)
        for i = 1:m
            % calculate the hypothesis
            hypothesis = theta(1);
            for inner_j = 2:num_features
                hypothesis = hypothesis + (theta(inner_j) * X(i,inner_j));
            end
            % then subtract y(i)
            hypothesis = hypothesis - y(i);
            % then multiply by X(i,j)
            sumTemps(j) = sumTemps(j) + hypothesis * X(i,j);
        end
    end

     % set temps
    temps = zeros(1, num_features);
    for j = 1:num_features
        % for each feature we need to calculate the temp theta
        % before we symulatneously update theta
        temps(j) = theta(j) - ((alpha * (1/m)) * sumTemps(j));
    end

    % set Theta
    for j = 1:num_features
        theta(j) = temps(j);
    end


    % ============================================================

    % Save the cost J in every iteration    
    % costTemp = computeCostMulti(X, y, theta);

    % fprintf('\nprint computeCostMulti(X, y, theta) :\n');
    % computeCostMulti(X, y, theta)
    % pause;
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
