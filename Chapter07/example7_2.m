% Clear variables 
clear; 

% Load image and display
A = imread('images/plate_side.jpg');    
figure, imshow(A);                       

% Interactively define coords of input quadrilateral
[x, y] = ginput(4);
input_points = [x, y];

% Load reference image
figure, imshow('images/plate_reference.jpg')

% Interactively define coords of base quadrilateral
[x, y] = ginput(4);
base_points = [x, y];   

% Create projective transformation structure
t_carplate = fitgeotrans(input_points, base_points, 'projective');    

% Apply projective transform 
registered = imwarp(A, t_carplate);  

% Interactively crop result and display
B = imcrop(registered);              
figure, imshow(B)                        
