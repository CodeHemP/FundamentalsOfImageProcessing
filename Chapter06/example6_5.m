% Load image
A = imread('images/test_blur.jpg'); 

% Smooth edges
A=edgetaper(A,ones(25));  

%Deconvolve (initial estimate PSF "flat")
[J, ~] = deconvblind(A, ones(10)); 

% Display original and convolved
subplot(1, 4, 1), imshow(A, []);			
subplot(1, 4, 2), imshow(J, []);

% Deconvolve (initial estimate PSF "normal")
h = fspecial('gaussian', [10, 10], 3); 
[J, PSF] = deconvblind(A, h); 

% Display Wiener filter with recovered PSF and Wiener deconvolution
subplot(1, 4, 3), imshow(J, []);		
J = deconvwnr(A, PSF, 0.01);              
subplot(1, 4, 4), imshow(J, []);		
