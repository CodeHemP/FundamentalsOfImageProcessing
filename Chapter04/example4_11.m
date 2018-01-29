% Load image
A = imread('cameraman.tif');

% Generate 3x3 Laplacian filter
h = fspecial('laplacian');

% Filter image with Laplacian kernel
B = imfilter(A, h);

% Subtract Laplacian from original.
C = imsubtract(A, B);

% Display images
subplot(1, 3, 1), imshow(A);
subplot(1, 3, 2), imagesc(B); axis image; axis off;
subplot(1, 3, 3), imshow(C);
