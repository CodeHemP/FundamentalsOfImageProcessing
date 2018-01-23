% Read in images
A = imread('toycars1.png');
B = imread('toycars2.png');

% Convert to binary
A_binary = im2bw(A);           
B_binary = im2bw(B);

% XOR images
C_binary = xor(A_binary, B_binary);

% Display images 
subplot(1, 3, 1), imshow(A_binary); 
subplot(1, 3, 2), imshow(B_binary);
subplot(1, 3, 3), imshow(C_binary);