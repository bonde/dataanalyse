function TempFilter(interactive)
close all;

% Define smaller views of the signal
% This is set to one week and a month
% We use one month as offset
startday = 7*4*24;
days = 7;
frame = startday:startday+24*days;
wideframe = startday:startday+24*days*4;

% Read data
load('../temp.mat');

fTemp = fftshift(fft(temp));

figure, plot(abs(log(fTemp)));

if interactive
    places = ginput;

    for p = 1:size(places, 1)
        x = places(p, 1);
        width = 100;
        fTemp(x-width:x+width) = 0 + 0*1i;
    end
else
    d_0 = 150;
    h = DAIdealFilter(temp, d_0);
    % Or use a gaussian
    %h = abs(fftshift(fft(fspecial('gauss', size(temp), 3))));
    fTemp = h.*fTemp;
end

figure, plot(abs(log(fTemp)));

reconst = real(ifft(ifftshift(fTemp)));

figure();
hold on;
plot(temp(frame));
plot(reconst(frame), 'r');
hold off;

figure();
hold on;
plot(temp(wideframe));
plot(reconst(wideframe), 'r');
hold off;

end
