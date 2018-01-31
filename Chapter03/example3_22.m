% Read in image
A = imread('images/autumn.tif');

% Convert original to HSV image
A_HSV = rgb2hsv(A);

% Histogram equalise V (3rd) channel
V = histeq(A_HSV(:, :, 3));

% Copy equalised V plane into (3rd) channel
A_HSV(:, :, 3) = V;

% Convert back to RGB
B = hsv2rgb(A_HSV);

% Plot 
subplot(1, 2, 1), imshow(A);
subplot(1, 2, 2), imshow(B);
