% Load image
A = imread('images/cameraman.tif');

% Define functions
func_mean = @(x) uint8(mean(x(:)));
func_min = @(x) uint8(min(x(:)));
func_max = @(x) uint8(max(x(:)));

% Loop of values for 'n'
for n = 3:23
    fprintf('%d\n', n);
    tic
    B = nlfilter(A, [n, n], func_mean);
    % B = nlfilter(A, [n, n], func_min);
    % B = nlfilter(A, [n, n], func_max);
    toc;
end