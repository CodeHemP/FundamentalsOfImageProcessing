% Read in the image
A = imread('cameraman.tif');

% Display image using 'imshow'
subplot(2, 2, 1);
imshow(A);

% Display image using 'imagesc'
subplot(2, 2, 2);
imagesc(A);

% Correct aspect ratio of displayed image
axis image; 

% Turn off the axis labelling
axis off;

% Display intensity image in gray-scale
colormap(gray);