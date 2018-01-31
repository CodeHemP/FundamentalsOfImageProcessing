% Read in image
A = imread('cameraman.tif');

% Log transform
val = im2double(A);
B = 2 * log(1+val);
C = 3 * log(1+val);
D = 5 * log(1+val);

% Display images
subplot(2, 2, 1), imshow(A);
subplot(2, 2, 2), imshow(B); 
subplot(2, 2, 3), imshow(C);
subplot(2, 2, 4), imshow(D);
