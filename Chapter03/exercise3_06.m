% Read in image
A = imread('images/coins.png');

% Perform thresholding
A_thresh = imbinarize(A, 0.5);
A_adapt = imbinarize(A, 'adaptive');
T_adapt2 = floor((max(A(:))-min(A(:))) / 2);
A_adapt2 = imbinarize(A, double(T_adapt2)/255);

% Display images
subplot(4, 1, 1), imshow(A); 
subplot(4, 1, 2), imshow(A_thresh);
subplot(4, 1, 3), imshow(A_adapt);
subplot(4, 1, 4), imshow(A_adapt2);
