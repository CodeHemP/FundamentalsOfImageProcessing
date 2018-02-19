% Load image
A = imread('images/cameraman.tif');                    

% Mark the tie points and save within GUI
% Gives input_points and output_points
cpstruct = cpselect(A, A);        

%Infer affine transformation from tie points
tform = fitgeotrans(input_points, base_points, 'affine');

%Transform input
B = imwarp(A, tform);                             

% Display results
subplot(121), imshow(A);
subplot(122), imshow(B);
