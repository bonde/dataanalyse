function week4
% Good meassure
close all;

% Load data
load '../1F.TXT';
load '../2F.TXT';
load '../3F.TXT';
load '../4F.TXT';
load '../5F.TXT';
load '../6F.TXT';
load '../1M.TXT';
load '../2M.TXT';
load '../3M.TXT';
load '../4M.TXT';
load '../5M.TXT';
load '../6M.TXT';

% Concat data
allF = [X1F; X2F; X3F; X4F; X5F; X6F];
allM = [X1M; X2M; X3M; X4M; X5M; X6M];

fprintf('Statistics ...\n\n');

fprintf('Female samples:\n');
PrintStat(X1F, 'X1F');
PrintStat(X2F, 'X2F');
PrintStat(X3F, 'X3F');
PrintStat(X4F, 'X4F');
PrintStat(X5F, 'X5F');
PrintStat(X6F, 'X6F');
PrintStat(allF, 'allF');

fprintf('\n');

fprintf('Male samples:\n');
PrintStat(X1M, 'X1M');
PrintStat(X2M, 'X2M');
PrintStat(X3M, 'X3M');
PrintStat(X4M, 'X4M');
PrintStat(X5M, 'X5M');
PrintStat(X6M, 'X6M');
PrintStat(allM, 'allM');

% Create histograms
bins = 9;
figure, hist(allF, bins);
figure, hist(allM, bins);

fprintf('\n');
end
