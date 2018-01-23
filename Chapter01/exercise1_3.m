% Read in image
A = imread('cell.tif');

% Mess around with colormaps
imagesc(A); colormap('jet');
axis off; axis image;