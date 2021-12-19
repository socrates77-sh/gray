init_p;

VT = 26e-3;
IC1 = 10e-6;
CF = 10e-12;
RE = 10e3;

gm1 = IC1 / VT;
Gm = gm1 / (1 + gm1 * RE);
C = CF * Gm / gm1

SL = 2 * IC1 / C

% 296
