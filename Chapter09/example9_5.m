% Form data vectors for weight and height
W = [65 75 53 54 61 88 70 78 52 95 70 72]';                        
H = [170 176 154 167 171 184 182 190 166 168 176 175]';    

% Matrix with mean values replicated and form mean-subtracted data matrix
XM = [mean(W).*ones(length(W), 1), mean(H).*ones(length(H), 1)];     
X = [W H] - XM;  

% Calculate covariance
Cx = cov(X);

% Get eigenvalues and eigenvectors
[R, LAMBDA, Q] = svd(Cx);                                    		

% Calculate principal components	
V = X * R;                                                  			

% Display data on original axes and PC's in rotated space
subplot(121), plot(X(:,1), X(:,2), 'ko'); grid on;      		
subplot(122), plot(V(:,1), V(:,2), 'ro'); grid on;      		

% Reconstruct data in terms of PC's
XR = XM + V * R';

% Confirm reconstruction (diff = 0)
XR = XR - [W H];                                                		

% Confirm covariance terms 
V = V'*V./(length(W)-1);                                     		
