% Used to extract a neighbourhood from an image
function img_out = exercise4_02(img_in, x, y, N)
% Get image dimensions
[w, h, ~] = size(img_in);

% Check if cropped area is still within the image
if or(y+N > h, x+N > w)
    disp('Please choose a smaller value for N')
% Calculate cropped area and resize to original height
else
    img_out = img_in(x:x+N, y:y+N);
    img_out = imresize(img_out, [w, NaN]);
end
end
