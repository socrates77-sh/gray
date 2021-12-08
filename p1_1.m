VT = 26e-3;
ni = 1.5e16;
q = 1.6e-19;
epi = 1.04e-10;

NA = 8e21;
ND = 1e23;
VR = 5;

fprintf('(a)\n');
phi0 = VT*log(NA*ND/ni^2);
fprintf('phi0=%f (mV)\n', phi0*1e3);

W1 = sqrt(2*epi*(phi0+VR)/(q*NA*(1+NA/ND)));
fprintf('W1=%f (um)\n', W1*1e6);

W2 = sqrt(2*epi*(phi0+VR)/(q*ND*(1+ND/NA)));
fprintf('W2=%f (um)\n', W2*1e6);

Emax = -q*NA*W1/epi;
fprintf('Emax=%f (V/cm)\n', Emax/100);

fprintf('(b1)\n');
VR = 0;
phi0 = VT*log(NA*ND/ni^2);
fprintf('phi0=%f (mV)\n', phi0*1e3);

W1 = sqrt(2*epi*(phi0+VR)/(q*NA*(1+NA/ND)));
fprintf('W1=%f (um)\n', W1*1e6);

W2 = sqrt(2*epi*(phi0+VR)/(q*ND*(1+ND/NA)));
fprintf('W2=%f (um)\n', W2*1e6);

Emax = -q*NA*W1/epi;
fprintf('Emax=%f (V/cm)\n', Emax/100);

fprintf('(b2)\n');
VR = -0.3;
phi0 = VT*log(NA*ND/ni^2);
fprintf('phi0=%f (mV)\n', phi0*1e3);

W1 = sqrt(2*epi*(phi0+VR)/(q*NA*(1+NA/ND)));
fprintf('W1=%f (um)\n', W1*1e6);

W2 = sqrt(2*epi*(phi0+VR)/(q*ND*(1+ND/NA)));
fprintf('W2=%f (um)\n', W2*1e6);

Emax = -q*NA*W1/epi;
fprintf('Emax=%f (V/cm)\n', Emax/100);