% Read in image
A = imread('cameraman.tif'); 

val = im2double(A);
B = 2 * (val.^0.5);
C = 2 * (val.^1.5);
D = 2 * (val.^3.0);

% Display images
subplot(2, 2, 1), imshow(A); 
subplot(2, 2, 2), imshow(B); 
subplot(2, 2, 3), imshow(C);
subplot(2, 2, 4), imshow(D);
