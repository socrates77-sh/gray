VT = 26e-3;
ni = 1.5e16;
q = 1.6e-19;
epi = 1.04e-10;
eox = 3.9*8.854e-12;


Ec = 1.5e6;
W = 10e-6;
u = 450e-4;

hold on;
grid on;

lx = (0.4:0.01:10).*1e-6;
Vov = 0.1;
gm = (50*eox./lx)*u*W./lx*Vov;
plot(lx, gm, 'r');

A = sqrt(1+2*Vov./(Ec*lx));
gm1 = W*(50*eox./lx)*u*Ec.*(A-1)./A;
plot(lx, gm1, 'b');

dgm = (gm-gm1)./gm;

for i =1:length(lx)
    if(dgm(i)<0.1)
        fprintf('l=%f (um)\n', lx(i)*1e6);
        break
    end
end




