% Define Gaussian filter
k = fspecial('gaussian', [5, 5], 2);

% Apply to original image
I_g = imfilter(I,k); 

% Apply to salt and pepper image
Isp_g = imfilter(Isp,k);

% Apply to gaussian image
Ig_g = imfilter(Ig,k); 

% Display result image 
subplot(1, 3, 1), imshow(I_g);
subplot(1, 3, 2), imshow(Isp_g);
subplot(1, 3, 3), imshow(Ig_g);
