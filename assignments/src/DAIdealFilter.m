function h = MakeIdealFilter(I, d0)
% We assume that the image resolution is a product of two
[im in] = size(I);

% Allocate filter
h = zeros(size(I));

% Construct filter
for u = 1:im
    for v = 1:in
        % Move origo to the middle of the image
        D = sqrt((u - im/2)^2 + (v - in/2)^2);
        if D < d0
            h(u, v) = 1;
        end
    end
end

h = double(h);

end
