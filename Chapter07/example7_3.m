A = checkerboard(20, 4);                             %Read in image
% A = imread('images/trui.png');                    		%Repeat afterwards for this image
[h, w] = size(A);                    		%Extract no. of cols and rows
[xi,yi] = meshgrid(1:w,1:h);        		%Define grid

imid = round(size(A,2)/2);                  		% Find index of middle element
xt = xi(:) - imid;                          		%Subtract off and thus
yt = yi(:) - imid;                          		%shift origin to centre
[t,r] = cart2pol(xt,yt);                		%Convert from cartesian to polar
a = .0005;                                  		%Set the amplitude of the cubic term.
s = r + a.*r.^3;                             		%calculate BARREL distortion 
[ut,vt] = pol2cart(t,s);               		 	%Return the (distorted)cartesian coordinates
u = reshape(ut,size(xi)) + imid;            		%reshape the coordinates to original 2-D grid  
v = reshape(vt,size(yi)) + imid;                    %reshape the coordinates into original 2-D grid 
tmap_B = cat(3,u,v);                        		%Assign u and v grids as the 2 planes of a 3-D array
resamp = makeresampler('linear','fill');    
I_barrel = tformarray(A,[],resamp,[2 1],[1 2],[],tmap_B,.3);


% Convert from cartesian to polar and set amplitude of cubic term
[t, r] = cart2pol(xt, yt);                	
a =- 0.000015; 

% calculate pin-cushion distortion and return the (distorted) cartesian coordinates
s = r + a.*r.^3;                            		
[ut, vt] = pol2cart(t, s);  

% Reshape the coordinates into original 2-D grid 
u = reshape(ut, size(xi)) + imid;                 
v = reshape(vt, size(yi)) + imid; 

% Assign u and v grids as the 2 planes of a 3-D array
tmap_B = cat(3, u, v);                        		

% Define resampling structure for use with tformarray
resamp = makeresampler('linear','fill');            

% Transform image to conform to grid in 'tmap_B'   
I_pin = tformarray(A, [] ,resamp, [2, 1], [1, 2], [], tmap_B, 0.3);
                                         
% Display results
subplot(131); imshow(A);
subplot(132), imshow(I_barrel); 
subplot(133), imshow(I_pin); 
