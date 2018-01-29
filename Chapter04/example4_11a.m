% Load image
A = double(imread('cameraman.tif'));

% Generate 3x3 Laplacian filter
h = fspecial('laplacian');

% Filter image with Laplacian kernel
B = imfilter(double(A), h);

% Subtract Laplacian from original.
C = imsubtract(A, B);

% Display images
subplot(1, 3, 1), imagesc(A); colormap('gray'); axis image; axis off;
subplot(1, 3, 2), imagesc(B); colormap('gray'); axis image; axis off;
subplot(1, 3, 3), imagesc(C); colormap('gray'); axis image; axis off;
