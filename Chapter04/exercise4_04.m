% Load image
A = imread('images/cameraman.tif');

% Loop of values for 'n'
for n = 3:23
    fprintf('%d\n', n);
    tic
    B = colfilt(A, [n, n], 'sliding', @mean);
    % B = colfilt(A, [n, n], 'sliding', @min);
    % B = colfilt(A, [n, n], 'sliding', @max);
    toc;
end
