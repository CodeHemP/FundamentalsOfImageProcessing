% Load image
A = imread('images/eight.tif');

% Add noise
A_salt = imnoise(A, 'salt & pepper', 0.1);
A_gaus = imnoise(A, 'gaussian', 0.1);

% Apply rank filter
A_ord = ordfilt2(A, 3, ones(3, 3));
A_salt_ord = ordfilt2(A_salt, 3, ones(3, 3));
A_gaus_ord = ordfilt2(A_gaus, 3, ones(3, 3));

% Display images 
subplot(1, 3, 1), imshow(A_ord); 
subplot(1, 3, 2), imshow(A_salt_ord);
subplot(1, 3, 3), imshow(A_gaus_ord);
