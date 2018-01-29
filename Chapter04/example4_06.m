% Apply to original image
I_m = ordfilt2(I, 25, ones(5, 5));

% Apply to salt and pepper image
Ig_m = ordfilt2(Isp, 25, ones(5, 5));

% Apply to gaussian image
Ig_m = ordfilt2(Ig, 25, ones(5, 5));

% Display images 
subplot(1, 3, 1), imshow(I_m); 
subplot(1, 3, 2), imshow(Isp_m);
subplot(1, 3, 3), imshow(Ig_m);
