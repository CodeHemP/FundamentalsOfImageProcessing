% Load image and convert in intensity
image = imread('images/zener_star.jpg');
image = double(rgb2gray(image));

% Define constants
wdth = 5;
sdvn = 2;                                                 
k = 0.04; 

% Define gaussian filter
hsmall = fspecial('gaussian', [wdth, wdth], sdvn); 

% Calculate gradient
[Fx, Fy] = gradient(image);                                            

% Define terms in Harris function
Fx_sq = Fx.^2;
Fy_sq = Fy.^2;
Fx_Fy = Fx.*Fy;

% Perform neighbourhood smoothing
Fx_sq = filter2(hsmall, Fx_sq);                        			
Fy_sq = filter2(hsmall, Fy_sq);                        			
Fx_Fy = filter2(hsmall, Fx_Fy);

% Calculate Harris function
R = (1-2.*k).*Fx_sq.*Fy_sq - k.*(Fx_sq.^2+Fy_sq.^2) - Fx_Fy.^2;

% Maximum filtering over neighbourhood
S = ordfilt2(R, wdth.^2, ones(wdth));

% Get indices of local maxima
[j, k] = find(R > max(R(:))./12 & R == S);  

% Display results
subplot(121), imagesc(R); axis image; axis off; colormap(gray);
subplot(122), imshow(image,[]);                       		
hold on;
plot(k, j, 'r*');                            			
