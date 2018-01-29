% Read in image
A = imread('cameraman.tif');

val = im2double(A);
B = 4 * (((1+0.3).^(val)) - 1);
C = 4 * (((1+0.4).^(val)) - 1);
D = 4 * (((1+0.6).^(val)) - 1);

% Display images
subplot(2, 2, 1), imshow(A);
subplot(2, 2, 2), imshow(B);
subplot(2, 2, 3), imshow(C);
subplot(2, 2, 4), imshow(D);
