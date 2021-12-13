clear

a0 = 200;
fb = 0.05;
f1 = 1;
f2 = 2;
f3 = 4;

s = tf('s');
T = a0 * fb / ((1 + s / f1) * (1 + s / f2) * (1 + s / f3));

h = nyquistplot(T);
setoptions(h,'FreqUnits','MHz');

% 286
