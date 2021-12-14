clear

a0 = 40000;
f1 = 2e3;
f2 = 200e3;
f3 = 4e6;

part_str = 'part (a)';
disp(part_str);
A0 = 400;
f = 1 / A0;
s = tf('s');
T = a0 * f / ((1 + s / (2 * pi * f1)) * (1 + s / (2 * pi * f2)) * (1 + s / (2 * pi * f3)));

figure;
opts = bodeoptions;
opts.FreqUnits = 'Hz';
opts.Grid = 'on';
opts.Title.String = part_str;
h = bodeplot(T, opts);

[Gm, Pm, Wcg, Wcp] = margin(T);
Pm
Fcp = Wcp / (2 * pi)

part_str = 'part (b)';
disp(part_str);
A0 = 200;
f = 1 / A0;
s = tf('s');
T = a0 * f / ((1 + s / (2 * pi * f1)) * (1 + s / (2 * pi * f2)) * (1 + s / (2 * pi * f3)));

figure;
opts = bodeoptions;
opts.FreqUnits = 'Hz';
opts.Grid = 'on';
opts.Title.String = part_str;
h = bodeplot(T, opts);

[Gm, Pm, Wcg, Wcp] = margin(T);
Pm
Fcp = Wcp / (2 * pi)

part_str = 'part (c)';
disp(part_str);
A0 = 100;
f = 1 / A0;
s = tf('s');
T = a0 * f / ((1 + s / (2 * pi * f1)) * (1 + s / (2 * pi * f2)) * (1 + s / (2 * pi * f3)));

figure;
opts = bodeoptions;
opts.FreqUnits = 'Hz';
opts.Grid = 'on';
opts.Title.String = part_str;
h = bodeplot(T, opts);

[Gm, Pm, Wcg, Wcp] = margin(T);
Pm
Fcp = Wcp / (2 * pi)

% 287
