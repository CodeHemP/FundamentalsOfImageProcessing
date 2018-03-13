% Load image and convert to binary
A = imread('images/openclose_shapes.png');
A = ~logical(A);

% Define structuring elements and then open and close
se = strel('disk', 3);
bw1 = imopen(A, se);
bw2 = imclose(A, se);

% Display results
subplot(321), imshow(bw1);
subplot(322), imshow(bw2);

% Define structuring elements and then open and close
se = strel('disk', 6);
bw1 = imopen(A, se);
bw2 = imclose(A, se);

% Display results
subplot(323), imshow(bw1);
subplot(324), imshow(bw2);

% Define structuring elements and then open and close
se = strel('disk', 15);
bw1 = imopen(A, se);
bw2 = imclose(A, se);

% Display results
subplot(325), imshow(bw1);
subplot(326), imshow(bw2);
