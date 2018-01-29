% Read in images
A = imread('cameraman.tif');
B = imread('circles.png');

% Convert to 'uint8'
A = uint8(A);
B = uint8(B);

% Concatenate images
C = horzcat(A, B);

% Methods to make the circle visible
val = im2double(C);
C1 = 20 * log(1+val);
C2 = histeq(C);
C3 = adapthisteq(C, 'clipLimit', 0.02, 'Distribution', 'rayleigh');

% Display images
subplot(4, 1, 1), imshow(C);
subplot(4, 1, 2), imshow(C1);
subplot(4, 1, 3), imshow(C2);
subplot(4, 1, 4), imshow(C3);

