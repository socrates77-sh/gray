init_p;

a0 = 4000;
p1 = -3e6;
p2 = -6e6;
RF = 5e3;
RE = 50;
CF = 1.5e-12;

part_str = 'without CF';
disp(part_str);

s = tf('s');
a = a0 / ((1 - s / p1) * (1 - s / p2));
f = RE / RF;
T = a * f;

figure;
h = rlocusplot(T);
p = getoptions(h);
p.FreqUnits = 'Hz';
setoptions(h, p);

A = feedback(a, f);
P = pole(A)

figure;
h = bodeplot(A);
p = getoptions(h);
p.FreqUnits = 'Hz';
p.Grid = 'on';
setoptions(h, p);

part_str = 'with CF';
disp(part_str);

wz = 1 / (RF * CF);
fz = wz / (2 * pi);
z1 = -fz;
f = f * (1 - s / z1);
T = a * f;

figure;
h = rlocusplot(T);
p = getoptions(h);
p.FreqUnits = 'Hz';
setoptions(h, p);

A = feedback(a, f);
P = pole(A)

figure;
h = bodeplot(A);
p = getoptions(h);
p.FreqUnits = 'Hz';
p.Grid = 'on';
setoptions(h, p);

% 291
