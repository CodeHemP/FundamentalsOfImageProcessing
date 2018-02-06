% Load image and convert to intensity
A = imread('images/trui.png');
A = mat2gray(double(A));

% Define PSF and noise variance
PSF = fspecial('gaussian',7,10);                
V = 0.0001;  

% Create blurred and noisy image
J0 = imnoise(imfilter(A, PSF), 'gaussian', 0, V);	

% Define weighting function
WT = zeros(size(A));
WT(5:end-4, 5:end-4) = 1;

% LR deconvolution (10 iterations)
J1 = deconvlucy(J0, PSF, 10);    

% LR deconvolution (20 iterations - deviation of noise provided)
J2 = deconvlucy(J0, PSF, 20, sqrt(V)); 

% Weight function to suppress ringing
J3 = deconvlucy(J0, PSF, 20, sqrt(V), WT);          

% Display results
subplot(1, 4, 1); imshow(J0);                        
subplot(1, 4, 2); imshow(J1);
subplot(1, 4, 3); imshow(J2);
subplot(1, 4, 4); imshow(J3);
