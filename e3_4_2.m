VT = 26e-3;

gm = 1e-3;
ro = 20e3;
X = 0.1;

gmb = X*gm;
Gm = gm*(1-1/(1+(gm+gmb)*ro+1));
Ro = 2*ro+(gm+gmb)*ro*ro;

fprintf('Gm=%f (mA/V)\n', Gm*1e3);
fprintf('Ro=%f (kohm)\n', Ro*1e-3);
