% Read in images
A = imread('images/rice.png');
B = imread('images/cameraman.tif');

% Call function
C = exercise3_4(A, 0.5, B, 0.5);

% Display image
imshow(C);