% Load image
A = imread('text.tif');

% Define 3 averaging filters
h1 = fspecial('average'); 
h2 = fspecial('average', [5, 5]); 
h3 = fspecial('average', [5, 2]); 

% Original image
subplot(1, 4, 1); imagesc(A); axis image; axis off; 

% Apply 1$^{st}$ filter
B = filter2(h1, A);
subplot(1, 4, 2); imagesc(B); axis image; axis off; colormap(gray);

% Apply 2$^{nd}$ filter
B = filter2(h2, A);
subplot(1, 4, 3); imagesc(B); axis image; axis off; colormap(gray); 

% Apply 3$^{rd}$ filter
B = filter2(h3, A);
subplot(1, 4, 4); imagesc(B); axis image; axis off; colormap(gray);
