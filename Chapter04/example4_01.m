% Load image
A = imread('cameraman.tif');

% Set filter to apply
func = @(x) max(x(:));

% Apply over 3 x 3 neighbourhood
B = nlfilter(A, [3, 3], func);

% Display images
subplot(1, 2, 1), imshow(A);
subplot(1, 2, 2), imshow(B);
