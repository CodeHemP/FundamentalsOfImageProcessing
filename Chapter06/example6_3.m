% Load image
A = imread('images/trui.png');
A = double(A); 

% Generate noise
noise = 15 .* randn(size(A));  

% Generate motion PSF
PSF = fspecial('motion', 21, 11);

% Blur image and add noise
blurred = imfilter(A, PSF, 'circular');                	
blurredNoisy = blurred + noise;                     

% Calculate SCALAR noise-to-power ratio
NSR = sum(noise(:).^2) / sum(A(:).^2);                    

% Calculate noise power spectrum, average power in noise spectrum and get
% autocorrelation function of the noise, centered using 'fftshift'
NP = abs(fftn(noise)) .^ 2;                            
NPOW = sum(NP(:)) / numel(noise);                    
NCORR = fftshift(real(ifftn(NP)));  

% Calculate image power spectrum, average power in image spectrum and get
% autocorrelation function of the image, centered using 'fftshift'
AP = abs(fftn(A)) .^ 2;                                
APOW = sum(AP(:)) / numel(A);                     
ACORR = fftshift(real(ifftn(AP))); 

% SCALAR noise-to-signal power ratio
NSR = NPOW ./ APOW;                                     	
       
subplot(1, 3, 1);               % Display blurred and noisy image
imshow(blurredNoisy, [min(min(blurredNoisy)), max(max(blurredNoisy))]);
subplot(1, 3, 2);               % Wiener filtered (PSF and NSR)
imshow(deconvwnr(blurredNoisy, PSF, NSR), []);  
subplot(1, 3, 3);                   % Wiener filtered (PSF, noise and image autocorrelations)
imshow(deconvwnr(blurredNoisy, PSF, NCORR, ACORR), []);
