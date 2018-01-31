% Read in image
A = imread('images/peppers.png');

% Convert RGB image to indexed image
[A_ind, A_map] = rgb2ind(A, 128);

% Approximate indexed image by one with fewer colors
[B_app, B_map] = imapprox(A_ind, A_map, 16);

% Show image
imagesc(B_app);
colormap(B_map);