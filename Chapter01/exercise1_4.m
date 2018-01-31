% Read in image
A = imread('images/cell.tif');

% Save images
imwrite(A,'images/cell.jpg','jpg');
imwrite(A,'images/cell.png','png');

% Read in images (again)
A_jpg = imread('images/cell.jpg');
A_png = imread('images/cell.png');

% Calculate difference and show result
result = imabsdiff(A_jpg, A_png);
imagesc(result);
colormap('gray');
