% Load image
A = imread('images/text.png');

% Define structuring element
se = ones(6, 1); 

% Erode image
out = imdilate(A, se);  
subplot(121), imshow(A);         		
subplot(122), imshow(out);   
