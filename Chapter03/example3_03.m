% Read in images
A = imread('cola1.png'); 
B = imread('cola2.png'); 

% Subtract images
C = imabsdiff(A, B);

% Display images
subplot(1, 3, 1), imshow(A);  
subplot(1, 3, 2), imshow(B); 
subplot(1, 3, 3), imshow(C);