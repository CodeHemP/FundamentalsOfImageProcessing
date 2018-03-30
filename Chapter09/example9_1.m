% Load image
A = imread('images/coins_and_keys.png');

% Threshold and fill in holes
bw = ~imbinarize(rgb2gray(A), 0.35);
bw = imfill(bw, 'holes');    		
bw = imopen(bw, ones(5));

% Create labelled image and calculate region properties
[L, num] = bwlabel(bw);                                    		
s = regionprops(L, 'area', 'perimeter');                    	

% Calculate object’s area, perimeter and form factor 
for i = 1:num                                        
    x(i) = s(i).Area;
    y(i) = s(i).Perimeter;
    form(i) = 4.*pi.*x(i) ./ (y(i).^2);                         		
end

% Display results
figure;
subplot(121), imshow(A);
subplot(122), imshow(bw, [0, 1]);
figure;
subplot(131), plot(x./max(x),x,'ro'); axis square; 
subplot(132), plot(x./max(x),y,'ro'); axis square; 
subplot(133), plot(x./max(x),form,'ro'); axis square; 

