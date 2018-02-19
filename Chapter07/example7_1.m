% Load coordinates of two shapes
load procrustes_star.mat;                                   

% Show 'input_points' and 'base_points'
whos                                                        

% Plot the shape coordinates
subplot(121),
plot(base_points(:, 1), base_points(:, 2), 'kd'); hold on;      
plot(input_points(:, 1), input_points(:, 2), 'ro'); axis square; grid on

% Procrustes align input to base
[D, Z, transform] = procrustes(input_points, base_points);       

% Plot aligned coordinates
subplot(122),
plot(input_points(:, 1), input_points(:, 2), 'kd'); hold on;
plot(Z(:, 1), Z(:, 2), 'ro'); axis square; grid on; hold off;	


