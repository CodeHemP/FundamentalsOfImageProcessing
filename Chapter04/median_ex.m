% Load image
A = imread('images/trui.png');

% Add impulse noise
J = imnoise(A, 'salt & pepper', 0.05);

% Apply 5x5 mean filter
h = fspecial('average', [5, 5]) ;
J = imfilter(J, h);

% Apply 5x5 median filter
K = medfilt2(A, [5, 5]);

% Display images
subplot(1, 3, 1), imshow(A);
subplot(1, 3, 2), imshow(J);
subplot(1, 3, 3), imshow(K);
