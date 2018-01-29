% Read in images
A = imread('rice.png');
B = imread('cameraman.tif');

% Check image sizes
if size(A) ~= size(B)
    [rows_A, cols_A, cha_A] = size(A);
    [rows_B, cols_B, cha_B] = size(B);
    B = imresize(B, [rows_A, cols_A]);
end

subplot(2, 2, 1), imagesc(A + B);
subplot(2, 2, 2), imagesc(imadd(A, B, 'uint16'));
subplot(2, 2, 3), imagesc(A - B);
subplot(2, 2, 4), imagesc(imsubtract(A, B));
