% Load image (in greyscale)
A = rgb2gray(imread('peppers.png'));

% Create Log filter
k = fspecial('log'); 

% Laplacian edges 
A1 = imfilter(double(A), k, 'symmetric');

% Display images
subplot(1, 2, 1), imagesc(A);
subplot(1, 2, 2), imagesc(A1);
colormap('gray');
