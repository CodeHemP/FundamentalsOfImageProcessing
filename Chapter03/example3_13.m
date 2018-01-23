% Read in image
A = imread('coins.png');

% Get histogram bin values
[counts, bins] = imhist(A); 

% Query 50th value
counts(50)