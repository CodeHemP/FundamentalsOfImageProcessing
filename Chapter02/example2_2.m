% Read in image
A = imread('trui.png');

% Define Gaussian convolution kernel
PSF = fspecial('gaussian', [5, 5], 2);

% Define motion filter
h = fspecial('motion', 10, 45);

% Convolve image with convolution kernel
B = conv2(PSF, A);

% Convolve motion PSF using alternative function
C = imfilter(A, h, 'replicate');

% Self-convolution (motion blurred with original)
D = conv2(A, A);

% Plot in 2x2 grid
subplot(2, 2, 1), imshow(A); title('Original');
subplot(2, 2, 2), imshow(B, []); title('After Convolution');
subplot(2, 2, 3), imshow(C, []); title('After Convolution');
subplot(2, 2, 4), imshow(D, []); title('Auto-Correlation');