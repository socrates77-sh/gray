init_p;

R = 20e3;
df = 100e3;
VDD = 10;
q = 1.6e-19;

ID = (VDD - 0.6) / R;
rd = 26e-3 / ID;
nd_vo = (1.66e-20 / R + 2 * q * ID) * (resp(rd, R))^2

voT = sqrt(nd_vo * df)

% 345
