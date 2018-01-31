% Load image (in greyscale)
A = rgb2gray(imread('peppers.png'));

% Create 10x10 Log filter
k = fspecial('log', [11, 11], 3.0); 

% Zero-Crossing edges (auto-thresholded) 
A1 = edge(A, 'zerocross', [], k);

% Display images
subplot(1, 2, 1), imagesc(A); axis image; axis off;
subplot(1, 2, 2), imagesc(A1); axis image; axis off;
colormap('gray');
