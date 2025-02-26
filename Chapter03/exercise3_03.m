% Read in images
A = imread('images/AT3_1m4_01.tif');
B = imread('images/AT3_1m4_02.tif');
C = imread('images/AT3_1m4_09.tif');
D = imread('images/AT3_1m4_10.tif');
images = [A, B, C, D];

for i = 1:size(images)
    images(i) = imabsdiff(A, images(i));
end

implay(images)
