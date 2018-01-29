% Apply to original image
I_m = medfilt2(I, [3, 3]);

% Apply to salt and pepper image
Isp_m = medfilt2(Isp, [3, 3]);

% Apply to gaussian image
Ig_m = medfilt2(Ig, [3, 3]);

% Display images 
subplot(1, 3, 1), imshow(I_m); 
subplot(1, 3, 2), imshow(Isp_m);
subplot(1, 3, 3), imshow(Ig_m);
