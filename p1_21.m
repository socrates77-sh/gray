VT = 26e-3;
ni = 1.5e16;
q = 1.6e-19;
epi = 1.04e-10;
eox = 3.9*8.854e-12;

k = 54e-6;
Vt0 = 0.7;
Ec = 1.5e6;
VDS = 5;

W = 1e-6;
L = 1e-6;
figure(1);
hold on;
grid on;

vgs = Vt0:0.01:5;
vds_act = (Ec*L*(sqrt(1+2*(vgs-Vt0)/(Ec*L))-1));
s_ids1 = sqrt((k/2)*(W/L)*vds_act.^2);
plot(vgs, s_ids1, 'r');
line([0 Vt0], [0 0], 'color', 'r');
