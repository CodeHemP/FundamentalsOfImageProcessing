% Read in images
A = imread('images/toycars1.png');
B = imread('images/toycars2.png');

% Convert to binary
A_binary = imbinarize(A);           
B_binary = imbinarize(B);

% XOR images
C_binary = xor(A_binary, B_binary);

% Display images 
subplot(1, 3, 1), imshow(A_binary); 
subplot(1, 3, 2), imshow(B_binary);
subplot(1, 3, 3), imshow(C_binary);