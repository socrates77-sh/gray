init_p;

R = 20e3;
df = 100e3;
VDD = 10;
q = 1.6e-19;
K = 3e-16;

ID = (VDD - 0.6) / R;
rd = 26e-3 / ID;

f = logspace(0, 7);
S_vo = (1.66e-20 / R + 2 * q * ID + K * ID ./ f) * (resp(rd, R))^2;
S_vo_1 = (1.66e-20 / R + 2 * q * ID) * (resp(rd, R))^2
S_vo_2 = K * ID * (resp(rd, R))^2

loglog(f, S_vo);
grid on;

% 345
