% Read in image
A = imread('images/AT3_1m4_10.tif');

% Log transform
val = im2double(A);
A_log = 0.8 * log(1+val);

% Exponential transform
A_exp = 2 * (((1+0.4).^(val)) - 1);

% Power-law (gamma) transform
A_pow = 2 * (val.^2.0);

% Display results
subplot(2, 2, 1), imshow(A);
subplot(2, 2, 2), imshow(A_pow);
subplot(2, 2, 3), imhist(A);
subplot(2, 2, 4), imhist(A_pow);