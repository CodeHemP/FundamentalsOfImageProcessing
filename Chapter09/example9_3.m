% Load image and conver to greyscale
imgG = rgb2gray(imread('images/spanners.png'));

% Threshold image and label it
imgBin = ~imbinarize(imgG, 0.5);
[L, num] = bwlabel(imgBin);                  
subplot(2,2,1), imshow(imgG);                     

for i = 1:num                             
    I = zeros(size(imgG));
    
    % Find pixels belonging to ith object and set = 1
    ind = find(L==i);
    I(ind) = 1;               
    subplot(2,2,i+1), imshow(I);           
    
    % Get indices for grid
    [rows, cols] = size(I);
    x = 1:cols;
    y = 1:rows;
    
    % Set up grid for calculation
    [X, Y] = meshgrid(x, y);                  

    % Calculate ordinary moments                                        
    M_00 = sum(sum(I));                       
    M_10 = sum(sum(X.*I));
    M_01 = sum(sum(Y.*I));
    xav = M_10./M_00;
    yav = M_01./M_00;
    
    % Mean subtract the X and Y coordinates
    X = X - xav;
    Y = Y - yav;   
    
    % Plot
    hold on;
    plot(M_10, M_01, 'ko');
    drawnow;
    
    % Calculate central moments
    M_11 = sum(sum(X.*Y.*I));
    M_20 = sum(sum(X.^2.*I));
    M_02 = sum(sum(Y.^2.*I));
    M_21 = sum(sum(X.^2.*Y.*I));
    M_12 = sum(sum(X.*Y.^2.*I));
    M_30 = sum(sum(X.^3.*I));
    M_03 = sum(sum(Y.^3.*I));
    
    %calculate normalised moments
    eta_11 = M_11./M_00.^2;
    eta_20 = M_20./M_00.^2;
    eta_02 = M_02./M_00.^2;
    eta_21 = M_21./M_00.^(5./2);
    eta_12 = M_12./M_00.^(5./2);
    eta_30 = M_30./M_00.^(5./2);
    eta_03 = M_03./M_00.^(5./2);

    % Calculate Hu moments
    Hu_1 = eta_20 + eta_02;
    Hu_2 = (eta_20 - eta_02).^2 + (2.*eta_11).^2;
    Hu_3 = (eta_30 - 3.*eta_12).^2 + (3.*eta_21 - eta_03).^2;

    fprintf('\nObject number is %d\n', i)
    fprintf('Hu invariant moments are %f %f %f\n', Hu_1, Hu_2, Hu_3)

    pause;
end
