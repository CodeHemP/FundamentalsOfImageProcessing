% Read in image
A = imread('westconcordaerial.png');
% A = imread('peppers.png');

% Contrast streching
A_HSV = rgb2hsv(A);
V = histeq(A_HSV(:, :, 3));
A_HSV(:, :, 3) = V;
A1 = hsv2rgb(A_HSV);

% Histogram equalization
A2 = histeq(A);

% Display images
subplot(3, 1, 1), imshow(A);
subplot(3, 1, 2), imshow(A1);
subplot(3, 1, 3), imshow(A2);
