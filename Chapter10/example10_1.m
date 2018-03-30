% Load image
image = imread('images/coins.png');                            

% Calculat image histogram
[counts, X] = imhist(image);  

% Fit polynomial to histgram and evaluate
P = polyfit(X, counts, 6);
Y = polyval(P, X);  

% Find minimum of polynomial
[V, ind] = sort(abs(diff(Y)));
thresh = ind(3) ./ 255; 		

% Otsu's method
level = graythresh(image);                                  

% Display results
subplot(221), imshow(image);                      		
subplot(222), imshow(imbinarize(image, 0.35));                   	
subplot(223), imshow(imbinarize(image, thresh));                	
subplot(224), imshow(imbinarize(image, level));     

% Plot histogram and polynomial fit
figure;
plot(X, counts);
hold on, plot(X, Y, 'r-');	
