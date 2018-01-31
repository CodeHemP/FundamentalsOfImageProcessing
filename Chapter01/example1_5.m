% Read in image and examine grayscale image in interactive viewer
A = imread('images/cell.tif');
imshow(A);

% Read in image and examine RGB image in interactive viewer
B = imread('images/onion.png');
imshow(B);

% Print pixel value, set pixel value to white and view changes
A(25, 50)
A(25, 50) = 255;
imshow(A);

% Print pixel value, print red pixel value, set pixel value to white and
% view changes
B(25, 50, :)                  
B(25, 50, 1)                   
B(25, 50, :) = [255, 255, 255];
imshow(B);