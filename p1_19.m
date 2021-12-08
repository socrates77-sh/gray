VT = 26e-3;
ni = 1.5e16;
q = 1.6e-19;
epi = 1.04e-10;
eox = 3.9*8.854e-12;

k = 194e-6;
Vt0 = 0.6;
Ec = 1.5e6;
VDS = 3;

W = 2e-6;
L = 0.5e-6;
figure(1);
hold on;
grid on;

vgs = Vt0:0.01:3;
vds_act = (Ec*L*(sqrt(1+2*(vgs-Vt0)/(Ec*L))-1));
ids1 = (k/2)*(W/L)*vds_act.^2;
plot(vgs, ids1, 'r');
line([0 Vt0], [0 0], 'color', 'r');

Rsx = 1/(Ec*W*k);
ids2 = (k/2)*(W/L)*(vgs-Vt0).^2./(1+k*W*Rsx*(vgs-Vt0)/L);
plot(vgs, ids2, 'b');
line([0 Vt0], [0 0], 'color', 'b');

di = (ids1-ids2)./ids1;

for i =1:length(lx)
    if(di(i)>0.1)
        fprintf('l=%f (mA)\n', vgs(i)*1e3);
        break
    end
end
