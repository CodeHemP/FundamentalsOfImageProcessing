% Read in image
A = imread('images/coins.png');

% Perform thresholding
A_thresh = imbinarize(A, 0.5);
T = adaptthresh(A);
A_adapt = imbinarize(A, T);

% Display images
subplot(3, 1, 1), imshow(A); 
subplot(3, 1, 2), imshow(A_thresh);
subplot(3, 1, 3), imshow(A_adapt);
