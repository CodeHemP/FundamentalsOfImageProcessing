% Load image
A = imread('images/aeroplane_silhouette.png');

% Threshold and invert
bw = ~imbinarize(A, 0.5);                                               
subplot(121), imshow(bw, []);   

% Get coordinates of non-zero pixels
[y,x] = find(bw > 0.5); 

% Get centroid of data and plot
centroid = mean([x, y]);                                            
hold on; plot(centroid(1), centroid(2), 'rd');

% Calculate covariance of coordinates, find principle axes and eigenvalues
C = cov([x, y]);                                                 
[U, S] = eig(C);                                                                                                               
m = U(2, 1) ./ U(1, 1);                                                     	
const = centroid(2) - m.*centroid(1);
xl = 50:450;
yl = m.*xl + const;

% Display results
subplot(122), imshow(bw, []);
h = line(xl, yl);
set(h, 'Color', [1 0 0], 'LineWidth', 2.0)
m2 = U(2, 2) ./ U(1, 2);
const = centroid(2) - m2.*centroid(1);
x2 = 50:450;
y2 = m2.*x2 + const;
h = line(x2, y2);
set(h, 'Color', [1 0 0], 'LineWidth', 2.0)
