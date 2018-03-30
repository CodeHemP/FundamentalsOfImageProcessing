% Create artificial image
center1 = -10;                                 
center2 = -center1;
dist = sqrt(2*(2*center1)^2);
radius = dist/2 * 1.4;
lims = [floor(center1-1.2*radius), ceil(center2+1.2*radius)];
[x, y] = meshgrid(lims(1):lims(2));
bw1 = sqrt((x-center1).^2 + (y-center1).^2) <= radius;
bw2 = sqrt((x-center2).^2 + (y-center2).^2) <= radius;
bw = bw1 | bw2;

% Calculate Euclidean distance transform of ~bw
D = bwdist(~bw);                               

% Display image and basic segmentation function
subplot(221), imshow(bw, []);                 
subplot(222), imshow(D, []);                   

% Modify segmentation function: invert it and set background pixels lower
% than all catchment basin minima
D = -D;                                 	
D(~bw) = -inf;                                 
subplot(223), imshow(D, []);                   

% Calculate watershed of segmentation function
L = watershed(D);
subplot(224), imagesc(L);
axis image; axis off; colormap(hot); colorbar;

% Load image and threshold it automatically
A = imread('images/overlapping_euros1.png');     		
bw = imbinarize(A, graythresh(A)); 

% Remove background by opening
se = strel('disk', 10);
bwOpen = imopen(bw, se); 

% Calculate basic segmentation function: invert it and set background
% pixels lower than all catchment basin minima
D = bwdist(~bwOpen);                       		
D = -D;
D(~bwOpen) = -255; 

% Calculate watershed
L = watershed(D);

% Diplay results
figure;
subplot(141), imshow(A);              
subplot(142), imshow(bw)              		
subplot(143), imshow(D, []); 

%Identify watersheds and set=0 on original
ind = find(L==0);
Ac = A;
Ac(ind) = 0;        		
subplot(144), imshow(Ac, []);
