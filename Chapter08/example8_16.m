% Load image
A = imread('rice.png');

% Define structuring element
se = strel('disk', 12);  

% Apply top-hat filter
Atophat = imtophat(A, se);

% Contrast adjust filtered image
B = imadjust(Atophat);                  

% Display results
subplot(131), imshow(A);          
subplot(132), imshow(Atophat)     
subplot(133), imshow(B);          
