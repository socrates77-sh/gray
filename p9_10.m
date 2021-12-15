init_p;

f2=500e3;

f1=f2/(10e6/26);
f=f1*5.7e6/26;

Ric = 1.95e6;

Cc = 1/(2*3.14*f1*Ric);
Cc = vpa(rewrite(Cc * u.F, u.uF))

% 289
