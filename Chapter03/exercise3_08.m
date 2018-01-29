% Start timer
tic

% Read in image
A = imread('mandi.tif');

% Methods to make the circle visible
val = im2double(A);
A1 = 2 * log(1+val);
A2 = 4 * (((1+0.4).^(val)) - 1);
A3 = imadjust(A, stretchlim(A, [0.05, 0.95]), []);
A4 = adapthisteq(A, 'clipLimit', 0.1, 'Distribution', 'rayleigh');

% Display images
subplot(3, 2, 1), imshow(A);
subplot(3, 2, 2), imshow(A1);
subplot(3, 2, 3), imshow(A2);
subplot(3, 2, 4), imshow(A3);
subplot(3, 2, 5), imshow(A4);

% Display executing time
toc
