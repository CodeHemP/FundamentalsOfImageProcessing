% Read in HDR image
A_HDR = hdrread('images/office.hdr');

% Show image
imtool(tonemap(A_HDR));

% Get dynamic range of image
range = getrangefromclass(A_HDR);

% Display range
disp(range);