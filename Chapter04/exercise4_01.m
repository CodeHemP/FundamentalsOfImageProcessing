% Load image
A = imread('images/eight.tif');
% A = rgb2gray(imread('images/peppers.png'));

% Add noise
A_salt = imnoise(A, 'salt & pepper', 0.1);
A_gaus = imnoise(A, 'gaussian', 0.1);

% Define mean filter
k = ones(5, 5) / 25;

% Apply mean filter to images
A_mean = imfilter(A, k);
A_salt_mean = imfilter(A_salt, k);
A_gaus_mean = imfilter(A_gaus ,k);

% Apply median filter
A_med = medfilt2(A, [3, 3]);
A_salt_med = medfilt2(A_salt, [3, 3]);
A_gaus_med = medfilt2(A_gaus, [3, 3]);

% Apply rank filter
A_ord = ordfilt2(A, 3, ones(3, 3));
A_salt_ord = ordfilt2(A_salt, 3, ones(3, 3));
A_gaus_ord = ordfilt2(A_gaus, 3, ones(3, 3));


% Plot images
subplot(4, 3, 1), imshow(A); title('Original');
subplot(4, 3, 2), imshow(A_salt); title('Salt & Pepper');
subplot(4, 3, 3), imshow(A_gaus); title('Gaussian');
subplot(4, 3, 4), imshow(A_mean);
subplot(4, 3, 5), imshow(A_salt_mean);
subplot(4, 3, 6), imshow(A_gaus_mean);
subplot(4, 3, 7), imshow(A_med);
subplot(4, 3, 8), imshow(A_salt_med);
subplot(4, 3, 9), imshow(A_gaus_med);
subplot(4, 3, 10), imshow(A_ord);
subplot(4, 3, 11), imshow(A_salt_ord);
subplot(4, 3, 12), imshow(A_gaus_ord);
