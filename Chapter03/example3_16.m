% Read in image
A = imread('rice.png');

% Create median image
M = medfilt2(A, [15, 15]);

% Subtract mean image (+ constant)
S = A - (M + 20);

% Threshold result at 0 (keep +ve results only)
B=imbinarize(S, 0);

% Display images
subplot(1, 2, 1), imshow(A);
subplot(1, 2, 2), imshow(B);

