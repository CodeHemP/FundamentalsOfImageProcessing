% Load image
A = imread('images/text.png');

% Read in target shape interactively
B = imcrop(A);  

% Define hit and miss structure elements
se1 = B;
se2 = ~B;   

% Perform hit-miss transformation
bw = bwhitmiss(A, se1, se2);

% Coordinates of hits
[i, j] = find(bw == 1);  

% Display results
subplot(131), imshow(A);                  			
subplot(132), imagesc(B); axis image; axis off;   	
subplot(133), imshow(A); hold on; plot(j,i,'r*'); 		
