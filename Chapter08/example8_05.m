clear; close all;
% Load image
A = rgb2gray(imread('images/enamel.tif'));

% Threshold image and fill in holes
bw = ~imbinarize(A);
bwFilled = imfill(bw, 'holes');     % FUCKED

% Label and count the number of objects
[L, totalObjects] = bwlabel(bwFilled);
disp(totalObjects);

% Define structuring element, number of erosions and number of objects
se = strel('disk', 2);                                        			
numErosions = 0;                                                   	    
numObjects = totalObjects;                                           

% Start iterative erosion
while numObjects > 0                                                 		
    numErosions = numErosions+1;
    
    % Erode image
    bwFilled = imerode(bwFilled, se);
    
    %Count and label objects
    [L, numObjects] = bwlabel(bwFilled);
    disp(numObjects);
    
    % Build discrete distribution
    P(numErosions) = totalObjects - numObjects;                                           	
end

% Display initial results
figure;
subplot(121), imshow(A);
subplot(121), imshow(bwFilled); 

% Display graphs
figure;
% Plot Cumulative distribution
subplot(121), plot(0:numErosions, [0, P], 'ro');            
axis square;
axis([0, numErosions, 0, max(P)]);                        
xlabel('Size');
ylabel('Particles removed')                  
% Plot estimated size density function
subplot(122), plot(diff([0, P]), 'k*'); axis square;          
