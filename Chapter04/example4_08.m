% Load image
A = imread('circuit.tif');

% Edge Detection
A1 = edge(A, 'roberts');
A2 = edge(A, 'prewitt');
A3 = edge(A, 'sobel');

% Display images
subplot(2, 2, 1), imshow(A);
subplot(2, 2, 2), imshow(A1);
subplot(2, 2, 3), imshow(A2);
subplot(2, 2, 4), imshow(A3);
