% Load image
A = imread('images/circles.png'); 

% Calculate perimeter
bw = bwperim(A);        

% Thicken perimieter
se = strel('disk', 5);
bw1 = A-imerode(A, se);

% Display results
subplot(131), imshow(A);
subplot(132), imshow(bw);
subplot(133), imshow(bw1);
