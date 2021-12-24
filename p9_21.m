init_p;

W5 = 100e-6;
W7 = 100e-6;
W2 = 100e-6;
W6 = 100e-6;
W4 = 50e-6;
Ldrwn = 8e-6;
ID6 = 20e-6;
ID7 = 20e-6;
ID5 = 20e-6;
ID2 = 10e-6;
ID4 = 10e-6;
tox = 400e-10;
un = 700e-4;
up = 350e-4;
Ld = 0.3e-6;
Xd = 1e-6;
dXd_Vds_n = 0.2e-6;
dXd_Vds_p = 0.1e-6;
eox = 3.9 * 8.86e-12;
C = 5e-12;

L = Ldrwn - 2 * Ld - Xd;
ro2 = L / (ID2 * dXd_Vds_p);
ro4 = L / (ID4 * dXd_Vds_n);
ro6 = L / (ID6 * dXd_Vds_n);
ro7 = L / (ID7 * dXd_Vds_p);

Cox = eox / tox;
gm2 = (2 * ID2 * up * Cox * W2 / L)^0.5;
gm6 = (2 * ID6 * un * Cox * W6 / L)^0.5;

a0 = gm2 * gm6 * resp(ro2, ro4) * resp(ro6, ro7)

VG = 5;
Vt = 0.7;
VGS6 = (2 * ID6 / (un * Cox * W6 / L))^0.5 + Vt;
Rz = 1 / gm6;
W9 = L / (Rz * un * Cox * (VG - VGS6 - Vt))
L9drwn = Ldrwn

w0 = gm2 / C;
f0 = w0 / (2 * pi)

SR = ID5 / C

% 298
