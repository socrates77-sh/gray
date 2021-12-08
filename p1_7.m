VT = 26e-3;
ni = 1.5e16;
q = 1.6e-19;
epi = 1.04e-10;

bF = 100;
VA = 50;

BV_CBO = 120;
n = 4;

aF = bF/(1+bF);
BV_CEO = BV_CBO/bF^(1/n);

% fprintf('BV_CEO=%f (V)\n', BV_CEO);

syms VCE;

figure(1);
M = 1/(1-(VCE/BV_CBO)^n);
VCEx = 0:0.1:32;

IB = 60e-6;
IC = (1+VCE/VA)*M*aF*IB/(1-M*aF);
ICx = subs(IC, VCE, VCEx);
plot(VCEx, ICx);

IB = 30e-6;
IC = (1+VCE/VA)*M*aF*IB/(1-M*aF);
ICx = subs(IC, VCE, VCEx);
hold on;
plot(VCEx, ICx);

IB = 10e-6;
IC = (1+VCE/VA)*M*aF*IB/(1-M*aF);
ICx = subs(IC, VCE, VCEx);
hold on;
plot(VCEx, ICx);

IB = 1e-6;
IC = (1+VCE/VA)*M*aF*IB/(1-M*aF);
ICx = subs(IC, VCE, VCEx);
hold on;
plot(VCEx, ICx);

xlabel('VCE/V');
ylabel('IC/A');
grid on;