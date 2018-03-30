% Load image
image = imread('images/overlapping_euros.jpg'); 

% Calculate basic segmentation function 
imageGrad = ordfilt2(image, 25, ones(5)) - ordfilt2(image, 1, ones(5)); 
   
% Calculate watershed
L = watershed(imageGrad);
rgb = label2rgb(L, 'hot', [.5 .5 .5]); 

subplot(1,3,1), imshow(image, []);                     
subplot(1,3,2), imshow(imageGrad, []);                        
subplot(1,3,3), imshow(rgb, 'InitialMagnification', 'fit')   
