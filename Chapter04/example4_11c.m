% Load image
A = imread('cameraman.tif');

% Generate 10x10 Log filter
h = fspecial('log', [10, 10], 3.0);

% Filter image with Laplacian kernel
B = imfilter(A, h);

% Subtract Laplacian from original.
C = imsubtract(A, B);

% Display images
subplot(1, 3, 1), imshow(A);
subplot(1, 3, 2), imagesc(B); axis image; axis off;
subplot(1, 3, 3), imshow(C);

