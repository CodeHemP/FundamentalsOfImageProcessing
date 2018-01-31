% Read in image
A = imread('images/cameraman.tif'); 

% Add 100 pixel values to image A
B = imadd(A, 100); 

% Display images
subplot(1, 2, 1), imshow(A); 
subplot(1, 2, 2), imshow(B);