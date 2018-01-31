% Read in image
A = imread('images/cell.tif');

% Bit-plane slicing
A1 = double(bitget(A, 1));
A2 = double(bitget(A, 2));
A3 = double(bitget(A, 3));
A4 = double(bitget(A, 4));
A5 = double(bitget(A, 5));
A6 = double(bitget(A, 6));
A7 = double(bitget(A, 7));
A8 = double(bitget(A, 8));

% Plot each image
subplot(3, 3, 1), imshow(A), title('Original:');
subplot(3, 3, 2), imshow(A1), title('Bit Plane: 1');
subplot(3, 3, 3), imshow(A2), title('Bit Plane: 2');
subplot(3, 3, 4), imshow(A3), title('Bit Plane: 3');
subplot(3, 3, 5), imshow(A4), title('Bit Plane: 4');
subplot(3, 3, 6), imshow(A5), title('Bit Plane: 5');
subplot(3, 3, 7), imshow(A6), title('Bit Plane: 6');
subplot(3, 3, 8), imshow(A7), title('Bit Plane: 7');
subplot(3, 3, 9), imshow(A8), title('Bit Plane: 8');
