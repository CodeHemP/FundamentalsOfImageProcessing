% Load image
A = imread('images/peppers.png');

% Create a 5x5 convolution kernel
kernel = fspecial('motion', 50, 54);

% Apply using symmetric mirroring at edges 
B = imfilter(A, kernel, 'symmetric'); 

subplot(121), imshow(A);
subplot(122), imshow(B);