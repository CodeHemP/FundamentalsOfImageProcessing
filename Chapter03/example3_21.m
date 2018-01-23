% Read in image
A = imread('pout.tif');

A1 = adapthisteq(A, 'clipLimit', 0.02, 'Distribution', 'rayleigh');
A2 = adapthisteq(A, 'clipLimit', 0.02, 'Distribution', 'exponential');
A3 = adapthisteq(A, 'clipLimit', 0.08, 'Distribution', 'uniform');

% Display images
subplot(2, 2, 1), imshow(A);
subplot(2, 2, 2), imshow(A2);
subplot(2, 2, 3), imshow(A2);
subplot(2, 2, 4), imshow(A3);
