% Define mean filter
k = ones(3, 3) / 9;

% Apply to original image
I_m = imfilter(I, k);

% Apply to salt and pepper image
Isp_m = imfilter(Isp, k);

% Apply tp gaussian image
Ig_m = imfilter(Ig ,k);

% Display images 
subplot(1, 3, 1), imshow(I_m); 
subplot(1, 3, 2), imshow(Isp_m);
subplot(1, 3, 3), imshow(Ig_m);
