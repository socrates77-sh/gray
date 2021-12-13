clear

a0 = 200;
fb = 0.05;
f1 = 1e6;
f2 = 2e6;
f3 = 4e6;

s = tf('s');
T = a0 / ((1 + s / (2 * pi * f1)) * (1 + s / (2 * pi * f2)) * (1 + s / (2 * pi * f3)));

h = bodeplot(T);
setoptions(h, 'FreqUnits', 'Hz');
grid on;

% [mag1, phase1, w1] = bode(T);

% len = length(w);
% mag_d = reshape(mag, len, 1);
% phase_d = reshape(phase, len, 1);

% ind=find(abs(phase_d+180)<1);
% mag_d(ind)

w1 = 2 * pi * 3.74e6;
[mag, phase, w] = bode(T, w1);
f_180 = phase
G_180 = mag

w2 = 2 * pi * 1.64e6;
[mag, phase, w] = bode(T, w2);
f_120 = phase
G_120 = mag

% 286
