clear

u = symunit;

a0 = 1e5;
f1 = 5;
f = 0.01;
R0 = 100;

w1 = 2 * pi * f1;

syms R1 R2 L
fun1 = R1 * R2 / (R1 + R2) - R0 / (1 + a0 * f);
fun2 = L / R1 - 1 / w1;
fun3 = L / (R1 + R2) - 1 / ((1 + a0 * f) * w1);

S = solve([fun1 fun2 fun3], [R1 R2 L]);
R1_r = vpa(S.R1 * u.ohm, 3)
R2_r = vpa(S.R2 * u.ohm, 3)
L_r = vpa(rewrite(S.L * u.H, u.mH), 3)

s = tf('s');
Zo = R0 / (1 + a0 * f) * (1 + s / w1) / (1 + s / ((1 + a0 * f) * w1));
opts = bodeoptions;
opts.FreqUnits = 'Hz';
opts.MagUnits = 'abs';
opts.MagScale = 'log';
opts.Grid = 'on';
h = bodeplot(Zo, opts);

% 288
