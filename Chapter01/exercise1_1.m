% Read in image
A = imread('cell.tif');

% Plot 'before'
subplot(2, 1, 1); imagesc(A);
title('Before'); axis image; colormap(gray);

% Change pixel value
A(100, 20) = A(100, 20) + 50;

% Plot 'after'
subplot(2, 1, 2); imagesc(A);
title('After'); axis image; colormap(gray);