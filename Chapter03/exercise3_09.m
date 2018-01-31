% Read in image
A = imread('autumn.tif');

B = lin2rgb(A);

% Display images
subplot(2, 1, 1), imshow(A); axis image;
subplot(2, 1, 2), imshow(B); axis image;
