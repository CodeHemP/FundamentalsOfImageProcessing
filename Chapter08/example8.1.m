% Example Matlab script as provided with textbook:
%
%  Fundamentals of Digital Image Processing: A Practical Approach with Examples in Matlab
%  Chris J. Solomon and Toby P. Breckon, Wiley-Blackwell, 2010
%  ISBN: 0470844736, DOI:10.1002/9780470689776, http://www.fundipbook.com
%
bw = imread('text.png');            		%Read in binary image
se=[0 1 0; 1 1 1; 0 1 0];                   %Define structuring element
bw_out=imdilate(bw,se);              		%Erode image
subplot(1,2,1), imshow(bw);         		%Display original
subplot(1,2,2), imshow(bw_out);     		%Display dilated image
