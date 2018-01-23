% Read in image
A = imread('coins.png');

% Get OTSU theshold
level = graythresh(A); 

% Theshold image
T = imbinarize(A, level);

% Display it
imshow(T)
