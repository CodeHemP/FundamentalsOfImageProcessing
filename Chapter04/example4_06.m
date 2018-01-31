% Load image
A = imread('images/eight.tif');

% Add 5% (0.05) salt and pepper noise
A_salt = imnoise(A, 'salt & pepper', 0.05);

% Add Gaussian noise (with 0.05 variance)
A_gaus = imnoise(A, 'gaussian', 0.05);

% Apply to original image
A_ord = ordfilt2(A, 3, ones(3, 3));

% Apply to salt and pepper image
A_salt_ord = ordfilt2(A_salt, 3, ones(3, 3));

% Apply tp gaussian image
A_gaus_ord = ordfilt2(A_gaus, 3, ones(3, 3));

% Display images 
subplot(1, 3, 1), imshow(A_ord); 
subplot(1, 3, 2), imshow(A_salt_ord);
subplot(1, 3, 3), imshow(A_gaus_ord);
