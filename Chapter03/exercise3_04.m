% Used to blend images using specific weights
function output = exercise3_04(A, wA, B, wB)
% Check if the weights equal 1
if (wA + wB) ~= 1.0
    error('Both weight values must equal 1');
end

% Check image sizes
if size(A) ~= size(B)
    [rows_A, cols_A, ~] = size(A);
    B = imresize(B, [rows_A, cols_A]);
end

% Calculate blended images
A = immultiply(A, wA);
B = immultiply(B, wB);
output = imadd(A, B);
end

