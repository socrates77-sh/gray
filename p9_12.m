init_p;

a0 = 40000;
p1 = 2;
p2 = 200;
p3 = 4000;

s = tf('s');
A = 1 / ((s + p1) * (s + p2) * (s + p3));

h = rlocusplot(A);
p = getoptions(h);
p.FreqUnits = 'Hz';
setoptions(h, p);

s = i * 2425;
T0 = abs(s - p1) * abs(s - p2) * abs(s - p3) / (p1 * p2 * p3);
f = T0 / a0

% 291
