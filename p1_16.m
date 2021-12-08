VT = 26e-3;
ni = 1.5e16;
q = 1.6e-19;
epi = 1.04e-10;
eox = 3.9*8.854e-12;

W = 10e-6;
L = 1e-6;
k = 194e-6;
lambda = 0.024;
tox =  80e-10;
phi = 0.3;
Vt0 = 0.6;
NA = 5e21;
VSB = 1;
VDS = 2;
VGS = 1;
phi0 = 0.7;
Csb0 = 20e-15;
Cdb0 = 20e-15;
Cgb = 5e-15;
Cgs1 = 2e-15;
Cgd = 2e-15;

Cox = eox/tox;
gamma = 1/Cox*sqrt(2*q*epi*NA);

Vt = Vt0+gamma*(sqrt(2*phi+VSB)-sqrt(2*phi));
ID = (k/2)*(W/L)*(VGS-Vt)^2*(1+lambda*VDS);
gm = sqrt(2*k*ID*W/L);
gmb = gm*gamma/(2*sqrt(2*phi+VSB));
ro = 1/(lambda*ID);
Csb = Csb0/sqrt(1+VSB/phi0);
VDB = VDS+VSB;
Cdb = Cdb0/sqrt(1+VDB/phi0);
Cgs2 = (2/3)*W*L*Cox;
Cgs = Cgs1+Cgs2;

fprintf('gm=%f (mA/V)\n', gm*1e3);
fprintf('gmb=%f (mA/V)\n', gmb*1e3);
fprintf('ro=%f (Kohm)\n', ro*1e-3);
fprintf('Csb=%f (fF)\n', Csb*1e15);
fprintf('Cdb=%f (fF)\n', Cdb*1e15);
fprintf('Cgs=%f (fF)\n', Cgs*1e15);
fprintf('Cgd=%f (fF)\n', Cgd*1e15);
fprintf('Cgb=%f (fF)\n', Cgb*1e15);



