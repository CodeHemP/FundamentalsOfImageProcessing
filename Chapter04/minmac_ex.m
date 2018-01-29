A = imread('trui.png');

% Apply minimum filter
min_filt = ordfilt2(A, 1, ones(5));

% Apply maximum filter
max_filt = ordfilt2(A, 25, ones(5));

% Subtract min from max
B = imsubtract(max_filt, min_filt); 

% Display images
subplot(1, 4, 1), imshow(A);
subplot(1, 4, 2), imshow(min_filt);
subplot(1, 4, 3), imshow(max_filt, []);
subplot(1, 4, 4), imshow(B, []);
