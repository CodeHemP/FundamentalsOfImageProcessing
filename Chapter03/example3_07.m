% Read in image
A = imread('trees.tif');

% Perform thresholding
T = imbinarize(A, 0.1);

% Display images
subplot(1, 2, 1), imshow(A); 
subplot(1, 2, 2), imshow(T);
