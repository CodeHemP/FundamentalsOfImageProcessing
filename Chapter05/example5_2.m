% Read in image
%A = imread('images/cameraman.tif');
A = imread('images/BBC_grey_testcard.png');

% Get FT and centered version
FT = fft2(A);
FT_centred = fftshift(FT); 

% Display images
subplot(2, 3, 1), imshow(A);                          	
subplot(2, 3, 2), imshow(log(1+abs(FT)), []);          	
subplot(2, 3, 3), imshow(log(1+abs(FT_centred)), []);      

% Inverse FFT and FFT_centered and display
Im1 = abs(ifft2(FT));
Im2 = abs(ifft2(FT_centred));
subplot(2, 3, 5), imshow(Im1, []);
subplot(2, 3, 6), imshow(Im2, []);

% Calculate image centerpoint
[yd, xd] = size(A);
x = -xd/2:xd/2-1;
y = -yd/2:yd/2-1;
[X, Y] = meshgrid(x, y);
sigma = 32;

% Construct freq domain filter
arg = (X.^2 + Y.^2)./sigma.^2;
freq_filt = exp(-arg);

% Centred filter on non-centred spectrum
imfilt1 = abs(ifft2(freq_filt.*FT)); 

% Centred filter on centred spectrum
imfilt2 = abs(ifft2(freq_filt.*FT_centred));

% Display results
figure;
subplot(1, 3, 1), imshow(freq_filt, []);               
subplot(1, 3, 2), imshow(imfilt1, []); 
subplot(1, 3, 3), imshow(imfilt2, []); 
