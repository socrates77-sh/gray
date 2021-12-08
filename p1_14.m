VT = 26e-3;
ni = 1.5e16;
q = 1.6e-19;
epi = 1.04e-10;

fT = 9*50e6;
tF = 0.25e-9;
Cu = 0.6e-12;
IC = 1e-3;
b0 = 100;
VA = 40;
Ccs = 2e-12;

gm = IC/VT;
tT = 1/(2*pi*fT);
Cje = (tT-tF)*gm-Cu;

IC = 2e-3;
gm = IC/VT;
rpi = b0/gm;
ro = VA/IC;
ru = 5*b0*ro;
Cpi = tF*gm+Cje;

fprintf('gm=%f (mA/V)\n', gm*1e3);
fprintf('rpi=%f (Kohm)\n', rpi*1e-3);
fprintf('ro=%f (Kohm)\n', ro*1e-3);
fprintf('ru=%f (Mohm)\n', ru*1e-6);
fprintf('Cpi=%f (pF)\n', Cpi*1e12);
fprintf('Cu=%f (pF)\n', Cu*1e12);
fprintf('Ccs=%f (pF)\n', Ccs*1e12);


