% Load image
image = imread('images/trui.png'); 

% Do quadtree decomposition
S = qtdecomp(image,.17); 

% Create empty blocks
blocks = repmat(uint8(0), size(S)); 

% Loop through successively smaller blocks
for dim = [512 256 128 64 32 16 8 4 2 1]               	
    numblocks = length(find(S==dim));
    
    if numblocks > 0        
        values = repmat(uint8(1), [dim dim numblocks]);
        values(2:dim, 2:dim,:) = 0;
        blocks = qtsetblk(blocks, S, dim, values);
    end
end

blocks(end, 1:end) = 1;
blocks(1:end, end) = 1;

% Find border pixels of regions and superimpose on original image
k = find(blocks==1);                          		
A = image;
A(k) = 255; 

% Display results
subplot(121), imshow(image);
subplot(122), imshow(A);                   
