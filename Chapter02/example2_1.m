% Define rectangle signal 'f' and normalize
f = ones(64, 1);
f = f ./ sum(f);

% Convolve 'f' with itself to give 'g' and normalize
g = conv(f, f);
g = g ./ sum(g);

% Convolve 'g' with itself to give 'h' and normalize
h = conv(g, g);
h = h ./ sum(h);

% Convolve 'h' with itself to give 'j' and normalize
j = conv(h, h);
j = j ./ sum(j);

% Plot in 2x2 grid
subplot(2, 2, 1), plot(f, 'k');
axis square; axis off;
subplot(2, 2, 2), plot(g, 'k');
axis square; axis off;
subplot(2, 2, 3), plot(h, 'k');
axis square; axis off;
subplot(2, 2, 4), plot(j, 'k');
axis square; axis off;
