% Read in image
A = imread('images/BBC_grey_testcard.png');

% Take FFT and centre it
FA = fft2(A);
FA = fftshift(FA);			

% Define PSF
PSF = fspecial('gaussian', size(A), 6);

% Calculate OTF and centre it
OTF = fft2(PSF);
OTF = fftshift(OTF);

% Calculate filtered image and centre it
A_filt = ifft2(OTF.*FA);
A_filt = fftshift(A_filt);

% Display Results
subplot(1, 4, 1); imshow(A, []);  colormap(gray);
subplot(1, 4, 2); imagesc(log(1+(PSF))); axis image; axis off; 
subplot(1, 4, 3); imagesc(log(1+abs(OTF))); axis image; axis off;
subplot(1, 4, 4); imagesc(abs(A_filt)); axis image; axis off;

% Define PSF
PSF = fspecial('gaussian', size(A), 6);

% Calculate corresponding OTF
OTF = fft2(PSF);
OTF = fftshift(OTF);	

% Define range to be altered
rlow = (size(A, 1)./2)-3; rhigh = (size(A, 1)./2)+3;	
clow = (size(A, 2)./2)-3; chigh = (size(A, 2)./2)+3;

% Extract Fourer phase and add random component to selected phase 
F_phase = angle(OTF); 				
F_phase(rlow:rhigh, clow:chigh) = F_phase(rlow:rhigh, clow:chigh) + 0.*pi.*rand;

% Recombine phase and modulus
OTF = abs(OTF).*exp(1i.*F_phase);

% Calculate filtered image and centre it
A_filt = ifft2(OTF.*FA);
A_filt = fftshift(A_filt);	

% Calculate corresponding PSF
psf_new = abs(fftshift((otf2psf(OTF))));

% Display results
figure;
subplot(1, 4, 1); imshow(A, []);
subplot(1, 4, 2); imagesc(log(1+psf_new)); axis image; axis off; colormap(gray);
subplot(1, 4, 3); imagesc(log(1+abs(OTF))); axis image; axis off;
subplot(1, 4, 4); imagesc(abs(A_filt)); axis image; axis off;
 
% Define motion PSF
PSF = fspecial('motion', 30, 30);

% Calculate corresponding OTF and centre it
OTF = psf2otf(PSF, size(A));
OTF = fftshift(OTF);

% Calculate filtered image
A_filt = ifft2(OTF.*FA);

% Display results
figure;
subplot(1, 4, 1); imshow(A, []); 			
subplot(1, 4, 2); imshow(log(1+PSF), []); 
subplot(1, 4, 3); imshow(log(1+abs(OTF)), []) 
subplot(1, 4, 4); imshow(abs(A_filt), []);
