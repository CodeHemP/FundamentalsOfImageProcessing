% Read in image
A = imread('images/cameraman.tif'); 

% Invert the image
B = imcomplement(A);

% Display images
subplot(1, 2, 1), imshow(A); 
subplot(1, 2, 2), imshow(B); 