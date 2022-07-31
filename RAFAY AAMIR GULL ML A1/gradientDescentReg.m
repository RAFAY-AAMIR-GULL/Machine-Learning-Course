function [theta, J_history] = gradientDescentReg(X, y, theta, alpha, num_iters,lambda)

m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
    for i = 1:m
        theta=theta+(2*alpha)*(X(i))*((y(i)-((theta(1)+theta(2)*X(i,1)))));
    end    
    [J_history(iter),grad] = costFunctionReg(X, y, theta,lambda);
end

end
