init_p;

VT = 26e-3;
q = 1.6e-19;
k4T = 1.66e-20;
RS = 1e3;
RL = 10e3;
IC = 1e-3;
beta = 50;
df = 2e6;

IB = IC / beta;
gm = IC / VT;
rpi = beta / gm;

S_vi = k4T / (2 * gm)
S_ii = 2 * q * (IB + IC / beta^2)

S_ix = k4T / RS + S_ii + S_vi / RS^2;
MDS = sqrt(S_ix * df)

% 350
