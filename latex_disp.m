function latex_disp(sym_str)
    text('Position', [0, 0.5], 'Fontsize', 18, 'Interpreter', 'latex', 'String', ['$' latex(sym_str) '$']);
    ax = gca;
    ax.XAxis.Visible = 'off';
    ax.YAxis.Visible = 'off';
end
