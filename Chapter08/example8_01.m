% Load image
A = imread('images/text.png');

% Define structuring element
se = [0 1 0;
      1 1 1;
      0 1 0]; 

% Erode image
out = imdilate(A, se);  
subplot(121), imshow(A);         		
subplot(122), imshow(out);   
