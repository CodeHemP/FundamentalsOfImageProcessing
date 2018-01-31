% Read in image
A = imread('images/coins.png');

% Get OTSU theshold
level = graythresh(A); 

% Theshold image
T = imbinarize(A, level);

% Display it
imshow(T)
