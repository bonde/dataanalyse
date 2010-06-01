function gamma1 = DASkewness(data)
% Helper function found in 'Computational Statistics Handbook
% with MATLAB' p. 60
n = length(data);
mu = mean(data);
num = (1/n)*sum((data-mu).^3);
den = (1/n)*sum((data-mu).^2);
gamma1 = num/den^(3/2);
end
