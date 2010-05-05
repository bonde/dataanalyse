function G = DAFilterF(I, h, debug)
% Apply the filter h in the Fourier domain
% Assume that the filter h is defined in the Fourier domain
% Get the Fourier transform of the image
F = fft2(I);

% Do convolution in Fourier domain with shifted filter
G = fftshift(h).*F;

% Show image
if debug
    figure; imshow(log(abs(G)), []);
end

% Do inverse Fourier transform
% Only use the real part of output
G = real(ifft2(G));

end
