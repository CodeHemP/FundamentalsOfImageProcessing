% Load image and use the Gradient magnitude as the basic segmentation function
imageRGB = imread('pears.png');         
I = rgb2gray(imageRGB);                 		   
hy = fspecial('sobel');
hx = hy';
Iy = imfilter(double(I), hy, 'replicate');
Ix = imfilter(double(I), hx, 'replicate');
gradmag = sqrt(Ix.^2 + Iy.^2);

% Mark the foreground objects using morphological techniques to clean up
% the image
se = strel('disk', 20);				
imageErode = imerode(I, se);				
Iobr = imreconstruct(imageErode, I);			
Iobrd = imdilate(Iobr, se);
Iobrcbr = imreconstruct(imcomplement(Iobrd), imcomplement(Iobr));
Iobrcbr = imcomplement(Iobrcbr); 									
                                    
subplot(131), imshow(I);
subplot(132), imshow(Iobr);
subplot(133); imshow(Iobrcbr);  

% Calculate the regional maxima of Iobrcbr to obtain good foreground markers
fgm = imregionalmax(Iobrcbr);       

% Superimpose foreground markers on the original image
I2 = I;
I2(fgm) = 255;				
figure;
subplot(131); imshow(I2);

% Clean the edges of the marker blobs and then shrink them a bit
se2 = strel(ones(5,5));				
fgm2 = imclose(fgm, se2);			
fgm3 = imerode(fgm2, se2);			

% Remove small isolated components
fgm4 = bwareaopen(fgm3, 20);		
I3 = I;
I3(fgm4) = 255;				
subplot(132), imshow(I3);			
																		
% Calculate background markers starting with a thresholding operation
bw = imbinarize(Iobrcbr, graythresh(Iobrcbr)); 
subplot(133), imshow(bw);			

% Thin the background by computing the 'skelaton by influence zones' (SKIZ)
D = bwdist(bw);					 
DL = watershed(D);					
bgm = DL == 0;						
figure;
subplot(131), imshow(bgm); 

% Compute the modified segmentation function using 'imimposemin' which
% modifies the gradient magnitude image so that its regional minima occur
% at foreground and background marker pixels.
gradmag2 = imimposemin(gradmag, bgm | fgm4);

% Calculate watershed transform 
L = watershed(gradmag2);   			

% Display the label matrix 'L' as colour image using 'label2rgb' and
% superimpose it on top of the original image
Lrgb = label2rgb(L, 'jet', 'w', 'shuffle');
subplot(132), imshow(Lrgb)
subplot(133), imshow(I); hold on;
himage = imshow(Lrgb);
set(himage, 'AlphaData', 0.3);
