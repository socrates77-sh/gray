clear
clc

syms x y n
f = x^n + y^n;
r = int(f)

pretty(r)

% text('Position', [0, 0.5], 'Fontsize', 18, 'Interpreter', 'latex', 'String', ['$' latex(r) '$'])
% ax = gca
% ax.XAxis.Visible = 'off'
% ax.YAxis.Visible = 'off'
latex_disp(r)