init_p;

syms x1 x2;
ic3 = 1 / ((1 + exp(-x1)) * (1 + exp(-x2)));
ic4 = 1 / ((1 + exp(x1)) * (1 + exp(-x2)));
ic5 = 1 / ((1 + exp(x1)) * (1 + exp(x2)));
ic6 = 1 / ((1 + exp(-x1)) * (1 + exp(x2)));

dic = ic3 - ic6 - (ic4 - ic5);
simplify(dic)
rewrite(dic, 'exp')

t = tanh(x1 / 2)*tanh(x2 / 2)
rewrite(t, 'exp')

% % fplot(t)
% t4 = taylor(tanh(x), 'Order', 4)
% latex_disp(t4)
