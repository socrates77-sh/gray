VT = 26e-3;
ni = 1.5e16;
q = 1.6e-19;
epi = 1.04e-10;

tT1 = 1/(2*pi*600e6);
tT2 = 1/(2*pi*1e9);
Cu1 = 0.15e-12;
gm1 = 1e-3/VT;
gm2 = 10e-3/VT;
gamma = 1/(50e3*gm1);

syms x y
S = solve(tT1 == x+y/gm1, tT2 == x+y/gm2);
tF = double(S.x);
Cje = double(S.y)-Cu1;

b0 = 100;
phi0 = 0.55;
Ccs1 = 1e-12;
VCB = 2;
VCS = 15;

fprintf('(a) when IC=0.1mA\n');
IC = 0.1e-3;

gm = IC/VT;
rpi = b0/gm;
ro = 1/(gamma*gm);
ru = 5*b0*ro;
Cpi = tF*gm+Cje;
Cu = Cu1*sqrt((1+10/phi0)/(1+VCB/phi0));
Ccs = Ccs1*sqrt((1+10/phi0)/(1+VCS/phi0));
fprintf('gm=%f (mA/V)\n', gm*1e3);
fprintf('rpi=%f (Kohm)\n', rpi*1e-3);
fprintf('ro=%f (Kohm)\n', ro*1e-3);
fprintf('ru=%f (Mohm)\n', ru*1e-6);
fprintf('Cpi=%f (pF)\n', Cpi*1e12);
fprintf('Cu=%f (pF)\n', Cu*1e12);
fprintf('Ccs=%f (pF)\n', Ccs*1e12);

fprintf('(a) when IC=1mA\n');
IC = 1e-3;

gm = IC/VT;
rpi = b0/gm;
ro = 1/(gamma*gm);
ru = 5*b0*ro;
Cpi = tF*gm+Cje;
Cu = Cu1*sqrt((1+10/phi0)/(1+VCB/phi0));
Ccs = Ccs1*sqrt((1+10/phi0)/(1+VCS/phi0));
fprintf('gm=%f (mA/V)\n', gm*1e3);
fprintf('rpi=%f (Kohm)\n', rpi*1e-3);
fprintf('ro=%f (Kohm)\n', ro*1e-3);
fprintf('ru=%f (Mohm)\n', ru*1e-6);
fprintf('Cpi=%f (pF)\n', Cpi*1e12);
fprintf('Cu=%f (pF)\n', Cu*1e12);
fprintf('Ccs=%f (pF)\n', Ccs*1e12);

fprintf('(a) when IC=5mA\n');
IC = 5e-3;

gm = IC/VT;
rpi = b0/gm;
ro = 1/(gamma*gm);
ru = 5*b0*ro;
Cpi = tF*gm+Cje;
Cu = Cu1*sqrt((1+10/phi0)/(1+VCB/phi0));
Ccs = Ccs1*sqrt((1+10/phi0)/(1+VCS/phi0));
fprintf('gm=%f (mA/V)\n', gm*1e3);
fprintf('rpi=%f (Kohm)\n', rpi*1e-3);
fprintf('ro=%f (Kohm)\n', ro*1e-3);
fprintf('ru=%f (Mohm)\n', ru*1e-6);
fprintf('Cpi=%f (pF)\n', Cpi*1e12);
fprintf('Cu=%f (pF)\n', Cu*1e12);
fprintf('Ccs=%f (pF)\n', Ccs*1e12);

ICx = 1e-6:1e-6:10e-3;
fTx = 1./(2*pi*(tF+VT*(Cje+Cu)./ICx));
loglog(ICx, fTx);
grid on;
xlabel('I_C');
ylabel('f_T');
