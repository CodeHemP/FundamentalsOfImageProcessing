% Load image
A = imread('images/basic_shapes.png');

% Get labelled objects and number of objects
[L, num] = bwlabel(A); 

% Display results
subplot(121), imagesc(A);
axis image; axis off; 		
colorbar('North');
subplot(122), imagesc(L);
axis image; axis off;
colormap(jet); colorbar('North')
