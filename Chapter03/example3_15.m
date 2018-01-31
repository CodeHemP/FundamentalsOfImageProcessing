% Read in image
A = imread('images/rice.png');

% Create mean image
M = imfilter(A, fspecial('average', [15, 15]), 'replicate');

% Subtract mean image (+ constant)
S = A - (M + 20);

% Threshold result at 0 (keep +ve results only)
B = imbinarize(S, 0);

% Display images
subplot(1, 2, 1), imshow(A);
subplot(1, 2, 2), imshow(B);

