% Read in image
A_A = imread('images/onion.png');     

A = rgb2hsv(A_A);

% Extract channels
A_H = A(:, :, 1);        
A_S = A(:, :, 2);         
A_V = A(:, :, 3);    

% Display in 2x2 plot
subplot(2, 2, 1); imshow(A_A); title('Original'); 
subplot(2, 2, 2); imshow(A_H); title('Hue');      
subplot(2, 2, 3); imshow(A_S); title('Saturation');
subplot(2, 2, 4); imshow(A_V); title('Value');