% Load image
A = imread('images/cameraman.tif');

% Generate Gaussian kernel
g = fspecial('gaussian', [5, 5], 1.5);

% Create smoothed image by filtering
A_s = imfilter(A, g); 

% Get difference image
A_d = (A - A_s); 		

% Display images
subplot(2, 3, 1), imshow(A);        % Original
subplot(2, 3, 2), imshow(A_d);      % unsharp difference
A_out = A + (0.3) .* A_d;           % Add k * difference image to original
subplot(2, 3, 3), imshow(A_out);
A_out = A + (0.5) .* A_d;           % Add k * difference image to original
subplot(2, 3, 4), imshow(A_out);
A_out = A + (0.7) .* A_d;           % Add k * difference image to original
subplot(2, 3, 5), imshow(A_out);
A_out = A + (2.0) .* A_d;           % Add k * difference image to original
subplot(2, 3, 6), imshow(A_out);
