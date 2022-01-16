init_p;

C = 1000e-12;
R = 20e3;
df = 100e3;
VDD = 10;
q = 1.6e-19;
K = 3e-16;

ID = (VDD - 0.6) / R;
rd = 26e-3 / ID;

f = logspace(0, 7);
S_vo = (1.66e-20 / R + 2 * q * ID + K * ID ./ f) * rd^2 ./ (1 + (2 * pi * C * rd * f).^2);
S_vo_1 = (1.66e-20 / R + 2 * q * ID)
S_vo_2 = K * ID
S_vo_3 = rd^2
S_vo_4 = 1 / (2 * pi * C * rd)

loglog(f, S_vo);
grid on;

% 345
