% Load image
A = imread('images/circuit.tif');

% Threhold image
B = imbinarize(A, 0.2);

% Define structuring element
SE = ones(3, 18);

% Erode horizontal lines and then vertical lines
bw1 = imerode(~B, SE);                          
bw2 = imerode(bw1, SE');

% Dilate back
bw3 = imdilate(bw2, SE');
bw4 = imdilate(bw3, SE); 

% Find boundaries
boundary = bwperim(bw4);
[i, j] = find(boundary); 

% Display results
subplot(231), imshow(A)            
subplot(232), imshow(~B);                
subplot(233), imshow(bw1);                                   
subplot(234), imshow(bw2);                                  
subplot(235), imshow(bw4);                                
subplot(236), imshow(A);
hold on;
plot(j, i, 'r.');
