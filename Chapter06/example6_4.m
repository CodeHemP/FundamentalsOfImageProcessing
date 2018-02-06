% Load image
I = imread('images/trui.png');

% Define PSF
PSF = fspecial('gaussian', 7, 10);                            

% Specify noise level
V = .01;

% Produce noisy blurred image
blurredNoisy = imnoise(imfilter(I, PSF), 'gaussian', 0, V);  

% Calculate noise power
NP = V .* numel(I);    

% Constrained deconvolution
[J, LAGRA_J] = deconvreg(blurredNoisy, PSF, NP);                                                                        % multiplier optimised
% Lagrange multiplier fixed (10 times larger)
[K, LAGRA_K] = deconvreg(blurredNoisy, PSF, [], LAGRA_J*10);	

% Display results
subplot(1, 3, 1); imshow(blurredNoisy);                         
subplot(1, 3, 2); imshow(J);                                 
subplot(1, 3, 3); imshow(K);                                 
