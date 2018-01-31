% Read in image
A = imread('images/pout.tif');

% Stretch contrast using method 1
B = imadjust(A, stretchlim(A, [0.05, 0.95]), []);

% Display images
subplot(1, 2, 1), imshow(A);
subplot(1, 2, 2), imshow(B);
