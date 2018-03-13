% Load image
A = imread('images/Noisy_Two_Ls.png');                       %Read in image

% CASE 1
% Define the hits
se1 = [0 0 0;
      1 1 0;
      0 1 0]; 
% Define the misses
se2 = [1 1 1;
      0 0 1;
      0 0 1]; 
% Apply hit-or-miss transform
bw = bwhitmiss(A, se1, se2);                            
% Display results
subplot(311), imshow(A, [0, 1]);    				
subplot(312), imshow(bw, [0, 1]);    

% CASE 2
% 1's for hits, -1's for misses,  0's for don't care
interval = [0 -1 -1;
           0 1 -1;
           0 0 0];  	
% Apply hit-or-miss transform
bw = bwhitmiss(A, interval);    
% Display results
subplot(313), imshow(bw,[0 1]);       

