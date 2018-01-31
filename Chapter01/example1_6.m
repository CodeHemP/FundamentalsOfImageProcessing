% Read in image
A = imread('images/onion.png');  

% Convert image to a grayscale
A_G = rgb2gray(A);       

% Display both side by side 
subplot(2, 1, 1); imshow(A); axis image;
subplot(2, 1, 2); imshow(A_G);         