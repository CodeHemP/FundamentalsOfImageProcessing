% Load image
A = imread('images/eight.tif');

% Add noise
A_salt = imnoise(A, 'salt & pepper', 0.1);
A_gaus = imnoise(A, 'gaussian', 0.1);

% Define mean filter
k = ones(5, 5) / 25;

% Apply mean filter to images
A_mean = imfilter(A, k);
A_salt_mean = imfilter(A_salt, k);
A_gaus_mean = imfilter(A_gaus ,k);

% Display images 
subplot(1, 3, 1), imshow(A_mean); 
subplot(1, 3, 2), imshow(A_salt_mean);
subplot(1, 3, 3), imshow(A_gaus_mean);
