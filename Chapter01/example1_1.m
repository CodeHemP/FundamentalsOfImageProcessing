% Get information about the .tif image
imfinfo('images/cameraman.tif')

% Read in the image
A = imread('images/cameraman.tif'); 

% Write the image to disk as a JPEG
imwrite(A,'images/cameraman.jpg','jpg');

% Get information about the .jpgimage
imfinfo('images/cameraman.jpg')                           