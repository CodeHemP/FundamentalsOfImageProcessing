% Read in image
A = imread('cola1.png'); 

% Multiply image by 1.5
B = immultiply(A, 1.5);

% Divide image by 4
C = imdivide(A, 4);

% Display images
subplot(1, 3, 1), imshow(A);  
subplot(1, 3, 2), imshow(B); 
subplot(1, 3, 3), imshow(C);