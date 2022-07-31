function J = CostF1(X, y, theta,alpha)
m = length(y);
J = 0;
    for i=1:m
     J=J+((y(i)-theta'*X(i,:)').^2)+alpha*(theta')*(theta);
    end


%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
 % number of training examples

% You need to return the following variables correctly 


% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

 
% =========================================================================

end
