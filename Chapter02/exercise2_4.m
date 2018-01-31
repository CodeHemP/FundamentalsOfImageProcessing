% Read in image
A = imread('images/eight.tif');

% Add 3% (0.03) salt and pepper noise
A_salt = imnoise(A, 'salt & pepper', 0.03);

% Add Gaussian noise (with 0.02 variance)
A_gauss = imnoise(A, 'gaussian', 0.02);

% Plot images
subplot(1, 3, 1), imshow(A);
subplot(1, 3, 2), imshow(A_salt);
subplot(1, 3, 3), imshow(A_gauss);
