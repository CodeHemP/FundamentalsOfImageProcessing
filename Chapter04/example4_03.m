% Load image
A = imread('eight.tif');

% Add 5% (0.05) salt and pepper noise
A_salt = imnoise(A, 'salt & pepper', 0.05);

% Add Gaussian noise (with 0.05 variance)
A_gauss = imnoise(A, 'gaussian', 0.05);

% Plot images
subplot(1, 3, 1), imshow(A);
subplot(1, 3, 2), imshow(A_salt);
subplot(1, 3, 3), imshow(A_gauss);
