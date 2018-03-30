% Load image
A = imread('images/text.png');            		

% Define structuring elements
se1 = strel('square', 4);                     
se2 = strel('line', 5, 45);

% Dilate and erode image
A_1 = imdilate(A, se1);              		
A_2 = imerode(A, se2);

% Display results
subplot(121), imshow(A_1);         		
subplot(122), imshow(A_2);               
