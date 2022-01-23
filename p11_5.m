init_p;

VT = 26e-3;
q = 1.6e-19;
k4T = 1.66e-20;
eox = 3.9 * 8.86e-12;
RS = 100e3;
RL = 10e3;
W = 100e-6;
L = 1e-6;
ID = 100e-6;
Vt = 0.6;
kn = 194e-6;
tox = 80e-10;
Kf = 3e-24;

gm = sqrt(2 * kn * ID * W / L);
Cox = eox / tox;
Cgs = 2/3 * W * L * Cox;

f = 10;
Av = -gm * RL / (1 + 2 * pi * f * Cgs * RS)
S_vo1 = Av^2 * k4T * RS
S_vo2 = (2/3 * k4T * gm + gm^2 * Kf / (W * L * Cox * f)) * RL^2
S_vo3 = k4T / RL * RL^2
voT = sqrt(S_vo1 + S_vo2 + S_vo3)
viT = voT / abs(Av)

f = 100e3;
Av = -gm * RL / (1 + 2 * pi * f * Cgs * RS)
S_vo1 = Av^2 * k4T * RS
S_vo2 = (2/3 * k4T * gm + gm^2 * Kf / (W * L * Cox * f)) * RL^2
S_vo3 = k4T / RL * RL^2
voT = sqrt(S_vo1 + S_vo2 + S_vo3)
viT = voT / abs(Av)

f = 1e9;
Av = -gm * RL / (1 + 2 * pi * f * Cgs * RS)
S_vo1 = Av^2 * k4T * RS
S_vo2 = (2/3 * k4T * gm + gm^2 * Kf / (W * L * Cox * f)) * RL^2
S_vo3 = k4T / RL * RL^2
voT = sqrt(S_vo1 + S_vo2 + S_vo3)
viT = voT / abs(Av)

% 348
