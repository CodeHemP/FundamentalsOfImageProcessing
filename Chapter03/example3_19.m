% Read in image
A = imread('pout.tif'); 
B = histeq(A);

% Display images and histograms
subplot(2, 2, 1), imshow(A);
subplot(2, 2, 2), imshow(B);
subplot(2, 2, 3), imhist(A);
subplot(2, 2, 4), imhist(B);
