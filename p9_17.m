init_p;

VT = 26e-3;
IC1 = 10e-6;
C = 0.05e-6;
Av = 500;

gm1 = IC1 / VT;
w0 = Av * gm1 / C;
f0 = w0 / (2 * pi);
f0 = vpa(rewrite(f0 * u.Hz, u.kHz))

SL = 2 * IC1 * Av / C;
SL = vpa(SL * u.V / u.S)

% 295
