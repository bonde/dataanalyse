function F = DANaiveFourier(S)
% Fourier transform the stupid way
% Designed for 1-D signals

N = length(S);

F = zeros(size(S));

for u = 1:N
    val = 0;

    for x = 1:N
        val = val + S(x)*(exp((2*pi*1i*(u - 1)*(x - 1))/N));
    end

    F(u) = 1/N*val;
end

end
