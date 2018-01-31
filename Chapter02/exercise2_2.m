% Read in image
A = imread('images/football.jpg');

% Resize image
B = imresize(A, 2);

% Plot images
subplot(2, 1, 1); imagesc(A);
axis image;
subplot(2, 1, 2); imagesc(B);
axis image;
