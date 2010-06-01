function gamma2 = DAKurtosis(data)
% Helper function found in 'Computational Statistics Handbook
% with MATLAB' p. 60
n = length(data);
mu = mean(data);
num = (1/n)*sum((data-mu).^4);
den = (1/n)*sum((data-mu).^2);
gamma2 = num/den^2;
end
