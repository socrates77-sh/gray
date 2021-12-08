VT = 26e-3;
ni = 1.5e16;
q = 1.6e-19;
epi = 1.04e-10;

IC = 1;
VCB = 1;
VCS = 2;
Cje0 = 20;
Cu0 = 10;
Ccs0 = 20;
b0 = 100;
tF = 15;
gamma = 1e-3;
phi0 = 0.55;
n = 0.5;

gm = IC/VT*1e-3;
rpi = b0/gm;
ro = 1/(gamma*gm);
ru = 5*b0*ro;
Cpi = tF*gm*1e3+2*Cje0;
Cu = Cu0/(1+VCB/phi0)^n;
Ccs = Ccs0/(1+VCS/phi0)^n;

fprintf('gm=%f (mA/V)\n', gm*1e3);
fprintf('rpi=%f (Kohm)\n', rpi*1e-3);
fprintf('ro=%f (Kohm)\n', ro*1e-3);
fprintf('ru=%f (Mohm)\n', ru*1e-6);
fprintf('Cpi=%f (fF)\n', Cpi);
fprintf('Cu=%f (fF)\n', Cu);
fprintf('Ccs=%f (fF)\n', Ccs);