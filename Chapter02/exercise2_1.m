% Read in image, get image dimensions and create zero image of equal size
A = imread('images/cameraman.tif'); 
[rows, cols] = size(A);
A_Z = zeros(size(A));

% Randomly sample 1% of points only and convolve with gaussian PSF
samples = rand(rows .* cols, 1) < 0.01;
A_Z(samples) = A(samples);
h = fspecial('gaussian', [10, 10], 2);
B10 = filter2(h, A_Z); 

subplot(1, 2, 1), imagesc(A_Z);
axis image; axis off;
colormap(gray); title('Object points')

subplot(1, 2, 2), imagesc(B10);
axis image; axis off;
colormap(gray); title('Response of LSI system')
