% Load image
I = imread('rice.png'); 

% Opening to estimate background
background = imopen(I, strel('disk', 15));

% Subtract background
I2 = imsubtract(I, background);

% Improve contrast
I3 = imadjust(I2); 

% Display results
subplot(141), imshow(I);
subplot(142), imshow(background);
subplot(143), imshow(I2);
subplot(144), imshow(I3);
