% Read in image
A = imread('images/cameraman.tif');

% Map input grey values of image A in range 0-1 to an output range of 0-1
% with gamma factor of 1/3 (i.e. r = 3)
B = imadjust(A, [0, 1], [0, 1], 1./3);

% Display images
subplot(1, 2, 1), imshow(A);
subplot(1, 2, 2), imshow(B); 
