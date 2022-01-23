init_p;

VT = 26e-3;
q = 1.6e-19;
k4T = 1.66e-20;

RS = 100e3;
IC = 0.5e-3;
beta = 100;
rb = 100;
df = 20e3;

IB = IC / beta;
gm = IC / VT;

S_vi = k4T * (rb + RS + 1 / (2 * gm));
S_ii = 2 * q * (IB + IC / beta^2);
S_v1 = S_vi + S_ii * RS^2
S_i1 = S_ii
viT = sqrt(S_v1 * df)

% 350
