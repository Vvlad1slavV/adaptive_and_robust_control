path = "out/";
config;
%%

TIME = 150;

gamma = 100;
sim_out = sim("model.slx", TIME);
gamma = 100;
sim_out_grad = sim("model_grad.slx", TIME);

time = sim_out.tout;
y = squeeze(sim_out.logsout.get("y").Values.Data);
e = squeeze(sim_out.logsout.get("e").Values.Data);
u = squeeze(sim_out.logsout.get("u").Values.Data);
psi_hat = (sim_out.logsout.get("psi_hat").Values.Data);

time_grad = sim_out_grad.tout;
y_grad = squeeze(sim_out_grad.logsout.get("y").Values.Data);
e_grad = squeeze(sim_out_grad.logsout.get("e").Values.Data);
u_grad = squeeze(sim_out_grad.logsout.get("u").Values.Data);
psi_hat_grad = (sim_out_grad.logsout.get("psi_hat").Values.Data);

% plot_xy_continuous_lable(time, y, "$Time, s$", "$y(t)$", true)
% saveas(gcf, path+'task_y_gamma_'+string(gamma)+'.png')
% 
% plot_xy_continuous_lable(time_grad, y_grad, "$Time, s$", "$y_{grad}(t)$", true)
% saveas(gcf, path+'task_y_grad_gamma_'+string(gamma)+'.png')

plot_xy_continuous_lable(time, e, "$Time, s$", "$e(t)$", true)

% saveas(gcf, path+'task_y_gamma_'+string(gamma)+'.png')

plot_xy_continuous_lable(time_grad, e_grad, "$Time, s$", "$e_{grad}(t)$", true)

% saveas(gcf, path+'task_y_grad_gamma_'+string(gamma)+'.png')

plot_xy_continuous_lable(time, psi_hat, "$Time, s$", "$\hat{\psi}(t)$", true)
plot_xy_continuous_lable(time_grad, psi_hat_grad, "$Time, s$", "$\hat{\psi_{grad}}(t)$", true)

% plot_xy_continuous_lable(time, u, "$Time, s$", "$u(t)$", true)
% saveas(gcf, path+'task_u_gamma_'+string(gamma)+'.png')
% plot_xy_continuous_lable(time, epsilon, "$Time, s$", "$\varepsilon$", true)
% saveas(gcf, path+'task_eps_gamma_'+string(gamma)+'.png')

%% Save model as pdf
print('-smodel', '-dpdf', 'out/model')
print('-smodel_grad', '-dpdf', 'out/model_grad')