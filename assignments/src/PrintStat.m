function PrintStat(data, varname)

mu = mean(data);
sigma2 = var(data);

fprintf('mean(%s) = %f, ', varname, mu);
fprintf('var(%s) = %f, ', varname, sigma2);
fprintf('gamma1(%s) = %f, ', varname, DASkewness(data));
fprintf('gamma2(%s) = %f\n', varname, DAKurtosis(data));
end
