% Load image and take FT
A = imread('images/trui.png');
B = fft2(A);
B = fftshift(B);

% Construct Gaussian PSF and extend over entire array
[x, y] = size(A);
[X, Y] = meshgrid(1:x, 1:y); 			
h = exp(-(X-x/2).^2./48) .* exp(-(Y-y/2).^2./48);

% Get OTF
H = psf2otf(h, size(h));
H = fftshift(H);		
g = ifft2(B .* H);

% Blur image in Fourier domain and add noise
g = mat2gray(abs(g));		
g = imnoise(g, 'gaussian', 0, 0.002);		

% Take FT of image and do inverse filtering avoiding small values in OTF
G = fft2(g);
G = fftshift(G);                          
indices = find(H > 1e-6);                               
F = zeros(size(G));
F(indices) = G(indices) ./ H(indices);

%Inverse FT to get filtered image
f = ifft2(F);
f = abs(f);                             

% Display output 
subplot(1, 4, 1), imshow(g, [min(min(g)) max(max(g))]);
subplot(1, 4, 2), imagesc(h); axis square; axis off;                  % PSF
subplot(1, 4, 3), imagesc(abs(H)); axis square; axis off;             % MTF
subplot(1, 4, 4), imagesc(f); axis square; axis tight; axis off; 