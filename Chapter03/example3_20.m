% Read in image
A = imread('images/pout.tif');

% Define ramp-like pdf as desired output histogram
distribution = 0:255;

% Supply desired histogram to perform matching
B = histeq(A, distribution);

% Display image
subplot(2, 3, 1), imshow(A);
subplot(2, 3, 2), imshow(B);

% Display distribution
subplot(2, 3, 3), plot(distribution);

% Display histograms
subplot(2, 3, 4), imhist(A); 
subplot(2, 3, 5), imhist(B); 
