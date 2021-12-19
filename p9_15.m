init_p;

a0 = 10^(100/20);
p1 = -100
p2 = -100e3
z1 = -120e3

s = tf('s');
% a = a0 * (1 - s / z1) / ((1 - s / p1) * (1 - s / p2));

a = zpk([z1], [p1 p2], abs(a0 * p1 * p2 / z1));
f = 1;
T = a * f;

% figure;
h = rlocusplot(T);
p = getoptions(h);
p.FreqUnits = 'Hz';
setoptions(h, p);

f = 0.001;
A = feedback(a, f);
P = pole(A)
Z = zero(A)

f = 1;
A = feedback(a, f);
P = pole(A)
Z = zero(A)

% 293

