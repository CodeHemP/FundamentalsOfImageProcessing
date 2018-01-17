% Generate random image array in range 0-1000 
A = rand(256).*1000;

% Poor contrast results using 'imshow' because data exceeds expected range
imshow(A);

% 'imagesc' automatically scales colourmap to data
imagesc(A);            
axis image; axis off;
colormap(gray); colorbar;

% But if we specify range of data explicitly then 'imshow' also displays
% correct image contrast
imshow(A,[0 1000]);