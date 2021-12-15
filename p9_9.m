init_p;

a0 = 10^(108/20);
f2 = 10e6;

f1 = 26;

syms f positive
fun1 = ((1 + (f / f1)^2) * (1 + (f / f2)^2)) - a0^2;
fun2 = -atan(f / f1) - atan(f / f2);

S = solve(fun1, f);
f_r = vpa(S);
a_arg = vpa(subs(fun2, f, f_r) * 180 / pi);

Gmc = 6.39e-3;
Roc = 86.3e3;
Ric = 1.95e6;

CM = 1 / (2 * 3.14 * f1 * Ric);
Cc = CM / (1 + Gmc * Roc);
Cc = vpa(rewrite(Cc * u.F, u.pF))

% 289
