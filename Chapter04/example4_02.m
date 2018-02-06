% Load image
A = imread('images/peppers.png');

% Create a 5x5 convolution kernel
kernel = fspecial('motion', 50, 54);

% Apply using symmetric mirroring at edges 
B = imfilter(A, kernel, 'symmetric'); 

% Loop of values for 'n'
for n = 3:3:27
    fprintf('N: %d\n', n);
    tic
    B_mean = nlfilter(A, [n, n], func_mean);
    toc

    tic
    B_min = nlfilter(A, [n, n], func_min);
    toc

    tic
    B_max = nlfilter(A, [n, n], func_max);
    toc
end
