% Read in image
A = imread('images/onion.png');     

% Extract channels
A_R = A(:, :, 1);        
A_G = A(:, :, 2);         
A_B = A(:, :, 3);    

% Display in 2x2 plot
subplot(2, 2, 1); imshow(A); title('Original'); 
subplot(2, 2, 2); imshow(A_R); title('Red');      
subplot(2, 2, 3); imshow(A_G); title('Green');
subplot(2, 2, 4); imshow(A_B); title('Blue');