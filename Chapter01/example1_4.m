% Read in images
A = imread('images/cell.tif');
B = imread('images/spine.tif');
C = imread('images/onion.png');

% Creates a 3 by 1 mosaic of plots
subplot(3, 1, 1); imagesc(A);           % Grey
axis image; axis off; colormap(gray);

subplot(3, 1, 2); imagesc(B);           % False-Colour
axis image; axis off; colormap(jet);

subplot(3, 1, 3); imshow(C);            % Colour
