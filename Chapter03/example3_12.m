% Read in image
A = imread('coins.png');

% Display image
subplot(1, 2, 1), imshow(A);

% Display histogram
subplot(1, 2, 2), imhist(A);