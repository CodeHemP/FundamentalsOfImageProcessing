% Load image
A = imread('images/eight.tif');

% Add noise
A_salt = imnoise(A, 'salt & pepper', 0.1);
A_gaus = imnoise(A, 'gaussian', 0.1);

% Apply median filter
A_med = medfilt2(A, [3, 3]);
A_salt_med = medfilt2(A_salt, [3, 3]);
A_gaus_med = medfilt2(A_gaus, [3, 3]);

% Display images 
subplot(1, 3, 1), imshow(A_med); 
subplot(1, 3, 2), imshow(A_salt_med);
subplot(1, 3, 3), imshow(A_gaus_med);
