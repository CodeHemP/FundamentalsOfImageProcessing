% Load images and control point structure
load ('ripollbabes.mat')  

% Load up the tie points
cpselect(rgb2gray(A), rgb2gray(B), cpstruct);    

% Infer affine transformation from tie points
tform = fitgeotrans(input_points, base_points, 'polynomial');  
  
% Transform input
C = imwarp(A, tform);                                 

% Display result
subplot(121), imshow(I);
subplot(122), imshow(C);
