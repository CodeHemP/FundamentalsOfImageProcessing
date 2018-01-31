% Load image
A = imread('images/eight.tif');

% Add 5% (0.05) salt and pepper noise
A_salt = imnoise(A, 'salt & pepper', 0.05);

% Add Gaussian noise (with 0.05 variance)
A_gaus = imnoise(A, 'gaussian', 0.05);

% Define Gaussian filter
k = fspecial('gaussian', [3, 3], 2);

% Apply to original image
A_gaus = imfilter(A, k);

% Apply to salt and pepper image
A_salt_gaus = imfilter(A_salt, k);

% Apply tp gaussian image
A_gaus_gaus = imfilter(A_gaus ,k);

% Display images 
subplot(1, 3, 1), imshow(A_gaus); 
subplot(1, 3, 2), imshow(A_salt_gaus);
subplot(1, 3, 3), imshow(A_gaus_gaus);
