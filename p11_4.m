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

S_vo = (gm * RL * rpi / (rpi + RS))^2 * (k4T * RS + RS^2 * 2 * q * IB) + RL^2 * (k4T / RL + 2 * q * IC)
voT = sqrt(S_vo * df);
G = RS * rpi * gm * RL / (RS + rpi);
MDS = voT / G

% 346
