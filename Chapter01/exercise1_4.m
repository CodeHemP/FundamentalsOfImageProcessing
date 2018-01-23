% Read in image
A = imread('cell.tif');

% Save images
imwrite(A,'cell.jpg','jpg');
imwrite(A,'cell.png','png');

% Read in images (again)
A_jpg = imread('cell.jpg');
A_png = imread('cell.png');

% Calculate difference and show result
result = imabsdiff(A_jpg, A_png);
imagesc(result);
colormap('gray');
