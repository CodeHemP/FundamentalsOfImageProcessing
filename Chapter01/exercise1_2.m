% Read in image
A = imread('cell.tif');

% Plot 'before'
subplot(2, 1, 1); imshow(A);
title('Before'); axis image; colormap(gray);

% Change all pixel values
[w, h, c] = size(A);

for row = 1:w
    for col = 1:h      
        A(row, col) = A(row, col) + 25;
    end
end

% Plot 'after'
subplot(2, 1, 2); imshow(A);
title('After'); axis image; colormap(gray);