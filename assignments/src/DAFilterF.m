function G = DAFilterF(I, h, debug)
% Apply the filter h in the Fourier domain
% Assume that the filter h is defined in the Fourier domain
% Get the Fourier transform of the image and move origo to the middle
F = fftshift(fft2(I));

% Do convolution in Fourier domain
G = h.*F;

% Show image
if debug
    figure; imshow(log(abs(G)), []);
end

% Adjust result and do inverse Fourier transform
% Only use the real part of output
G = real(ifft2(fftshift(G)));

end
