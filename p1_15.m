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

figure(1);
hold on;
grid on;

VGS = 1.5;
v_tri = 0:0.01:(VGS-Vt0);
i_tri = (k/2)*(W/L)*(2*(VGS-Vt0)*v_tri-v_tri.^2);
i_sat = (k/2)*(W/L)*(VGS-Vt0)^2;
plot(v_tri, i_tri, 'r');
line([VGS-Vt0 3], [i_sat i_sat], 'color', 'r');

VGS = 3;
v_tri = 0:0.01:(VGS-Vt0);
i_tri = (k/2)*(W/L)*(2*(VGS-Vt0)*v_tri-v_tri.^2);
i_sat = (k/2)*(W/L)*(VGS-Vt0)^2;
plot(v_tri, i_tri, 'b');
line([VGS-Vt0 3], [i_sat i_sat], 'color', 'b');


Cox = eox/tox;
gamma = 1/Cox*sqrt(2*q*epi*NA);

figure(2);
hold on;
grid on;

VSB = 0;
Vt = Vt0+gamma*(sqrt(2*phi+VSB)-sqrt(2*phi));
vx = Vt:0.01:2;
ix = (k/2)*(W/L)*(vx-Vt).^2;
plot(vx, ix, 'r');
line([0 Vt], [0 0], 'color', 'r');

VSB = 0.5;
Vt = Vt0+gamma*(sqrt(2*phi+VSB)-sqrt(2*phi));
vx = Vt:0.01:2;
ix = (k/2)*(W/L)*(vx-Vt).^2;
plot(vx, ix, 'b');
line([0 Vt], [0 0], 'color', 'b');

VSB = 1;
Vt = Vt0+gamma*(sqrt(2*phi+VSB)-sqrt(2*phi));
vx = Vt:0.01:2;
ix = (k/2)*(W/L)*(vx-Vt).^2;
plot(vx, ix, 'g');
line([0 Vt], [0 0], 'color', 'g');

