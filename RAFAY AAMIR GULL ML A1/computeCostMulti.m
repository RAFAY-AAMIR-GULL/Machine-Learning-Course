function J = computeCostMulti(X, y, theta)
m = length(y); % number of training examples
J = 0;
for i=1:m
     J=J+(1/(2*m))*((theta(1)+theta(2)*X(i,1) + theta(3)*X(i,2)) - y(i)).^2;
end
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values

% You need to return the following variables correctly 

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.


% =========================================================================

end
