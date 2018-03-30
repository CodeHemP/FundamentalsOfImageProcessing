% Load image
A = imread('images/sunandsea.jpg');

% Convert to grayscale
I = rgb2gray(A);

% Apply local standard deviaton filter
J = stdfilt(I);                                             
subplot(141), imshow(I);
subplot(142), imshow(J, []); 

% Apply entropy filter over 15x15 neighbourhood
J = entropyfilt(I, ones(15));                                
subplot(143), imshow(J, []); 

% Apply range filter over 5x5 neighbourhood
J = rangefilt(I, ones(5));                                   
subplot(144), imshow(J, []);                               
