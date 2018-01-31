% Load image (in greyscale)
A = rgb2gray(imread('images/peppers.png'));

% Create Log filter
k = fspecial('log'); 

% Laplacian edges 
A1 = imfilter(double(A), k, 'symmetric');

% Display images
subplot(1, 2, 1), imagesc(A); axis image; axis off;
subplot(1, 2, 2), imagesc(A1); axis image; axis off;
colormap('gray');
