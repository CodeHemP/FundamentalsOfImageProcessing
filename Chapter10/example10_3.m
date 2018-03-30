 % Load image
A=imread('images/trui.png');                      			

% Gausssian filters
h1 = fspecial('gaussian', [15, 15], 6);
h2 = fspecial('gaussian', [30, 30], 12);

% Display left column
subplot(331), imshow(A, []);               		
subplot(334), imshow(imfilter(A, h1), []);   		
subplot(337), imshow(imfilter(A, h2), []);   		

% Edge Detection: LOG (Original)
bw = edge(A, 'log');                  		
subplot(332), imshow(~bw, []);
% Edge Detection: Canny (Original)
bw = edge(A, 'canny'); 
subplot(333), imshow(~bw, []); 

% Edge Detection: LOG (sigma=6)
bw = edge(imfilter(A, h1), 'log');      		 
subplot(335), imshow(~bw, []); 
% Edge Detection: Canny (sigma=6)
bw = edge(imfilter(A, h1), 'canny');         
subplot(336), imshow(~bw, []);

% Edge Detection: Canny (sigma=15)
bw = edge(imfilter(A, h2), 'log');
subplot(338), imshow(~bw, []); 
% Edge Detection: Canny (sigma=15)
bw = edge(imfilter(A, h2), 'canny');
subplot(339), imshow(~bw, []);
