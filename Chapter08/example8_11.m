% Load image
A = imread('images/open_shapes.png');  

% Open with disk radius 10
se1 = strel('disk', 10);
bw1 = imopen(A, se1);                             

% Open with square side 25
se2 = strel('square', 25);
bw2 = imopen(A, se2);                             

% Display results
subplot(131), imshow(A); title('Original Image');                
subplot(132), imshow(bw1); title('Opening - disk radius=10');      
subplot(133), imshow(bw2); title('Opening - square side=25');      
