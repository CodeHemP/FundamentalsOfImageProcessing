% Get information about the .tif image
imfinfo('cameraman.tif')

% Read in the image
I1 = imread('cameraman.tif'); 

% Write the image to disk as a JPEG
imwrite(I1,'cameraman.jpg','jpg');

% Get information about the .jpgimage
imfinfo('cameraman.jpg')                           