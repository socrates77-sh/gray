VT = 26e-3;
ni = 1.5e16;
q = 1.6e-19;
epi = 1.04e-10;

WB = 10e-6;
IC = 0.5e-3;
Cje = 2e-12;
Dp = 13e-4;

tF = WB^2/(2*Dp);
gm = IC/VT;
tT = tF+Cje/gm;
fT = 1/(2*pi*tT);
Q = tF*IC;

fprintf('fT=%f (MHz)\n', fT*1e-6);
fprintf('Q=%f (pC)\n', Q*1e12);
