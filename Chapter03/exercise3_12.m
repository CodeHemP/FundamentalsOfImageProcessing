% Read in image
A = imread('images/autumn.tif');

% Extract channels
R = A(:, :, 1);        
G = A(:, :, 2);         
B = A(:, :, 3);

% Perform histogram equilization
R = adapthisteq(R);
G = adapthisteq(G);
B = adapthisteq(B);

% Display images
subplot(2, 2, 1), imshow(A);
subplot(2, 2, 2), imshow(R);
subplot(2, 2, 3), imshow(G);
subplot(2, 2, 4), imshow(B);
