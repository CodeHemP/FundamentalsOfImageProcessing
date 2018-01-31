% Load image
A = imread('images/peppers.png');

% Create a 5x5 convolution kernel
kernel = fspecial('motion', 50, 54);

% Apply using symmetric mirroring at edges 
B = imfilter(A, kernel, 'symmetric'); 

% Display images
subplot(1, 2, 1), imshow(A);
subplot(1, 2, 2), imshow(B);
