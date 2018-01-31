% Load image
A = imread('eight.tif');

% Add 5% (0.05) salt and pepper noise
A_salt = imnoise(A, 'salt & pepper', 0.05);

% Add Gaussian noise (with 0.05 variance)
A_gaus = imnoise(A, 'gaussian', 0.05);

% Apply to original image
A_med = medfilt2(A, [3, 3]);

% Apply to salt and pepper image
A_salt_med = medfilt2(A_salt, [3, 3]);

% Apply tp gaussian image
A_gaus_med = medfilt2(A_gaus, [3, 3]);

% Display images 
subplot(1, 3, 1), imshow(A_med); 
subplot(1, 3, 2), imshow(A_salt_med);
subplot(1, 3, 3), imshow(A_gaus_med);
