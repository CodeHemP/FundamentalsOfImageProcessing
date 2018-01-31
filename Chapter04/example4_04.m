% Load image
A = imread('eight.tif');

% Add 5% (0.05) salt and pepper noise
A_salt = imnoise(A, 'salt & pepper', 0.05);

% Add Gaussian noise (with 0.05 variance)
A_gaus = imnoise(A, 'gaussian', 0.05);

% Define mean filter
k = ones(3, 3) / 9;

% Apply to original image
A_mean = imfilter(A, k);

% Apply to salt and pepper image
A_salt_mean = imfilter(A_salt, k);

% Apply tp gaussian image
A_gaus_mean = imfilter(A_gaus ,k);

% Display images 
subplot(1, 3, 1), imshow(A_mean); 
subplot(1, 3, 2), imshow(A_salt_mean);
subplot(1, 3, 3), imshow(A_gaus_mean);
