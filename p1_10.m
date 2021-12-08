VT = 26e-3;
ni = 1.5e16;
q = 1.6e-19;
epi = 1.04e-10;

IC = 0.2;
VCB = 3;
VCS = 4;
Cje0 = 20;
Cu0 = 10;
Ccs0 = 20;
b0 = 100;
tF = 15;
gamma = 1e-3;
phi0 = 0.55;
n = 0.5;

gm = IC/VT*1e-3;
Cpi = tF*gm*1e3+2*Cje0;
Cu = Cu0/(1+VCB/phi0)^n;
fT = 1e12*gm/((Cpi+Cu)*2*pi);
fprintf('fT=%f (MHz)\n', fT*1e-6);

syms s;
B1(s) = b0/(1+b0*s*1e-12*(Cpi+Cu/gm));

IC = 1;
VCB = 1;
VCS = 2;
gm = IC/VT*1e-3;
Cpi = tF*gm*1e3+2*Cje0;
Cu = Cu0/(1+VCB/phi0)^n;
fT = 1e12*gm/((Cpi+Cu)*2*pi);
fprintf('fT=%f (MHz)\n', fT*1e-6);

B2(s) = b0/(1+b0*s*1e-12*(Cpi+Cu/gm));

[N, D] = numden(B1);
N1 = sym2poly(N);
D1 = sym2poly(D);
B1b = tf(N1, D1);
bode(B1b);
grid on;

hold on;
[N, D] = numden(B2);
N2 = sym2poly(N);
D2 = sym2poly(D);
B2b = tf(N2, D2);
bode(B2b);



