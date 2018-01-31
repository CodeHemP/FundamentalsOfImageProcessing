% Load image
A = imread('eight.tif');
size(A)

% Call function
B = exercise4_02(A, 100, 100, 100);
size(B)

% Display results
subplot(1, 2, 1), imshow(A);
subplot(1, 2, 2), imshow(B);
