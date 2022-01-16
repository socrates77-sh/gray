init_p;

syms IEE VT V dIc t;

Vid=sin(t);

dIc = IEE * (0.5*Vid/VT-1/3*(0.5*Vid/VT)^3)

eq=V^2/(48*VT^2)/(1-3*V^2/(48*VT^2))==0.01;
vpa(subs(solve(eq, V), VT, 26e-3))

% 328
