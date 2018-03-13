% Load image
A = imread('images/cameraman.tif');

% Define flat structuring element
se = strel(ones(3));                      			

% Grey-scale dilate image
Amax = imdilate(A, se);                                    

% Grey-scale dilate image
Amin = imerode(A, se);

% Subtract
Mgrad = Amax - Amin; 

% Display results
subplot(131), imagesc(Amax); axis image; axis off; 	
subplot(132), imagesc(Amin); axis image; axis off;
subplot(133), imagesc(Mgrad); axis image; axis off;
colormap(gray);
