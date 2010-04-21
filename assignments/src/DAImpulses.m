function F = DAImpulses(A, B, T)
% Create the signal from assignment 1.3

% Number of samples
N = 64;

% Set all zero
F = zeros(1,N);

% Create the delta functions/impulses
F(1) = A;
F(T + 1) = B;
F(N - T + 1) = B;

F = double(F);

end
