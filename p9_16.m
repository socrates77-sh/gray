init_p;

VT = 26e-3;
IC1 = 10e-6;
CF = 10e-12;

gm1 = IC1 / VT;
w0 = gm1 / CF;
f0 = w0 / (2 * pi);
f0 = vpa(rewrite(f0 * u.Hz, u.MHz))

SL = 2 * IC1 / gm1 * w0;
SL = vpa(SL * u.V / u.S)

% 294
