init_p;

syms IEE VT Vid dIc;

dIc = IEE * tanh(Vid / (2 * VT));

diff_dIc_Vid = diff(dIc, Vid)
diff_Vid0 = subs(diff_dIc_Vid, Vid, 0)
eq = diff_dIc_Vid == 0.99 * diff_Vid0
vpa(subs(solve(eq, Vid), VT, 26e-3))

% 328
