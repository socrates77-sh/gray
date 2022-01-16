init_p;

VT = 1;
IEE = 1;

V1 = 0.1 * VT;
Iout1 = @(V2) IEE * tanh(V1 / (2 * VT)) * tanh(V2 / (2 * VT));
V1 = 0.5 * VT;
Iout2 = @(V2) IEE * tanh(V1 / (2 * VT)) * tanh(V2 / (2 * VT));
V1 = VT;
Iout3 = @(V2) IEE * tanh(V1 / (2 * VT)) * tanh(V2 / (2 * VT));


hold on;
fplot(Iout1);
fplot(Iout2);
fplot(Iout3);
grid on;


% 327
