path = "out/";
config;
%%
TIME = 20;
gamma = 10000000;
sim_out = sim("model_without_loop.slx", TIME);

time = sim_out.tout;
y = squeeze(sim_out.logsout.get("y").Values.Data);
y_m = squeeze(sim_out.logsout.get("y_M").Values.Data);
e = squeeze(sim_out.logsout.get("e").Values.Data);
u = squeeze(sim_out.logsout.get("u").Values.Data);
psi_hat = (sim_out.logsout.get("psi_hat").Values.Data);

subpath = '';
plot_xy_continuous_lable_legend(time, [y_m y], "$Time, s$", "$y(t)$", {'$y_M$','$y$'}, true)
saveas(gcf, path+subpath+'model_fast_y_gamma_'+string(gamma)+'.png')
plot_xy_continuous_lable(time, e, "$Time, s$", "$e(t)$", true)
saveas(gcf, path+subpath+'model_fast_e_gamma_'+string(gamma)+'.png')
plot_xy_continuous_lable(time, u, "$Time, s$", "$u(t)$", true)
saveas(gcf, path+subpath+'model_fast_u_gamma_'+string(gamma)+'.png')
plot_xy_continuous_lable(time, psi_hat, "$Time, s$", "$\hat{\psi}(t)$", true)
saveas(gcf, path+subpath+'model_fast_psi_gamma_'+string(gamma)+'.png')
% close all
%%
TIME = 50;
gamma_grad = 10000000;
sim_out_grad = sim("model_grad_wl.slx", TIME);

time_grad = sim_out_grad.tout;
y_grad = squeeze(sim_out_grad.logsout.get("y").Values.Data);
y_m_grad = squeeze(sim_out_grad.logsout.get("y_M").Values.Data);
e_grad = squeeze(sim_out_grad.logsout.get("e").Values.Data);
u_grad = squeeze(sim_out_grad.logsout.get("u").Values.Data);
psi_hat_grad = (sim_out_grad.logsout.get("psi_hat").Values.Data);

subpath = '';
plot_xy_continuous_lable_legend(time_grad, [y_m_grad y_grad], "$Time, s$", "$y(t)$", {'$y_M$','$y$'}, true)
saveas(gcf, path+subpath+'model_grad_y_gamma_'+string(gamma_grad)+'.png')
plot_xy_continuous_lable(time_grad, e_grad, "$Time, s$", "$e(t)$", true)
saveas(gcf, path+subpath+'model_grad_e_gamma_'+string(gamma_grad)+'.png')
plot_xy_continuous_lable(time_grad, u_grad, "$Time, s$", "$u(t)$", true)
saveas(gcf, path+subpath+'model_grad_u_gamma_'+string(gamma_grad)+'.png')
plot_xy_continuous_lable(time_grad, psi_hat_grad, "$Time, s$", "$\hat{\psi}(t)$", true)
saveas(gcf, path+subpath+'model_grad_psi_gamma_'+string(gamma_grad)+'.png')
% close all

%%
TIME = 300;
gamma = 1000;
sim_out = sim("model_without_loop.slx", TIME);

time = sim_out.tout;
y = squeeze(sim_out.logsout.get("y").Values.Data);
y_m = squeeze(sim_out.logsout.get("y_M").Values.Data);
e = squeeze(sim_out.logsout.get("e").Values.Data);
u = squeeze(sim_out.logsout.get("u").Values.Data);
psi_hat = (sim_out.logsout.get("psi_hat").Values.Data);

subpath = '';
plot_xy_continuous_lable_legend(time, [y_m y], "$Time, s$", "$y(t)$", {'$y_M$','$y$'}, true)
saveas(gcf, path+subpath+'model_fast_y_gamma_'+string(gamma)+'.png')
plot_xy_continuous_lable(time, e, "$Time, s$", "$e(t)$", true)
saveas(gcf, path+subpath+'model_fast_e_gamma_'+string(gamma)+'.png')
plot_xy_continuous_lable(time, u, "$Time, s$", "$u(t)$", true)
saveas(gcf, path+subpath+'model_fast_u_gamma_'+string(gamma)+'.png')
plot_xy_continuous_lable(time, psi_hat, "$Time, s$", "$\hat{\psi}(t)$", true)
saveas(gcf, path+subpath+'model_fast_psi_gamma_'+string(gamma)+'.png')
% close all
%%
TIME = 100;
gamma_grad = 100000;
sim_out_grad = sim("model_grad_wl.slx", TIME);

time_grad = sim_out_grad.tout;
y_grad = squeeze(sim_out_grad.logsout.get("y").Values.Data);
y_m_grad = squeeze(sim_out_grad.logsout.get("y_M").Values.Data);
e_grad = squeeze(sim_out_grad.logsout.get("e").Values.Data);
u_grad = squeeze(sim_out_grad.logsout.get("u").Values.Data);
psi_hat_grad = (sim_out_grad.logsout.get("psi_hat").Values.Data);

subpath = '';
plot_xy_continuous_lable_legend(time_grad, [y_m_grad y_grad], "$Time, s$", "$y(t)$", {'$y_M$','$y$'}, true)
saveas(gcf, path+subpath+'model_grad_y_gamma_'+string(gamma_grad)+'.png')
plot_xy_continuous_lable(time_grad, e_grad, "$Time, s$", "$e(t)$", true)
saveas(gcf, path+subpath+'model_grad_e_gamma_'+string(gamma_grad)+'.png')
plot_xy_continuous_lable(time_grad, u_grad, "$Time, s$", "$u(t)$", true)
saveas(gcf, path+subpath+'model_grad_u_gamma_'+string(gamma_grad)+'.png')
plot_xy_continuous_lable(time_grad, psi_hat_grad, "$Time, s$", "$\hat{\psi}(t)$", true)
saveas(gcf, path+subpath+'model_grad_psi_gamma_'+string(gamma_grad)+'.png')
close all

%%
TIME = 20;
gamma = 1000000;
sim_out = sim("model_without_loop.slx", TIME);

time = sim_out.tout;
y = squeeze(sim_out.logsout.get("y").Values.Data);
y_m = squeeze(sim_out.logsout.get("y_M").Values.Data);
e = squeeze(sim_out.logsout.get("e").Values.Data);
u = squeeze(sim_out.logsout.get("u").Values.Data);
psi_hat = (sim_out.logsout.get("psi_hat").Values.Data);

subpath = '';
plot_xy_continuous_lable_legend(time, [y_m y], "$Time, s$", "$y(t)$", {'$y_M$','$y$'}, true)
saveas(gcf, path+subpath+'model_fast_y_gamma_'+string(gamma)+'.png')
plot_xy_continuous_lable(time, e, "$Time, s$", "$e(t)$", true)
saveas(gcf, path+subpath+'model_fast_e_gamma_'+string(gamma)+'.png')
plot_xy_continuous_lable(time, u, "$Time, s$", "$u(t)$", true)
saveas(gcf, path+subpath+'model_fast_u_gamma_'+string(gamma)+'.png')
plot_xy_continuous_lable(time, psi_hat, "$Time, s$", "$\hat{\psi}(t)$", true)
saveas(gcf, path+subpath+'model_fast_psi_gamma_'+string(gamma)+'.png')
close all
%%
TIME = 100;
gamma_grad = 1000000;
sim_out_grad = sim("model_grad_wl.slx", TIME);

time_grad = sim_out_grad.tout;
y_grad = squeeze(sim_out_grad.logsout.get("y").Values.Data);
y_m_grad = squeeze(sim_out_grad.logsout.get("y_M").Values.Data);
e_grad = squeeze(sim_out_grad.logsout.get("e").Values.Data);
u_grad = squeeze(sim_out_grad.logsout.get("u").Values.Data);
psi_hat_grad = (sim_out_grad.logsout.get("psi_hat").Values.Data);

subpath = '';
plot_xy_continuous_lable_legend(time_grad, [y_m_grad y_grad], "$Time, s$", "$y(t)$", {'$y_M$','$y$'}, true)
saveas(gcf, path+subpath+'model_grad_y_gamma_'+string(gamma_grad)+'.png')
plot_xy_continuous_lable(time_grad, e_grad, "$Time, s$", "$e(t)$", true)
saveas(gcf, path+subpath+'model_grad_e_gamma_'+string(gamma_grad)+'.png')
plot_xy_continuous_lable(time_grad, u_grad, "$Time, s$", "$u(t)$", true)
saveas(gcf, path+subpath+'model_grad_u_gamma_'+string(gamma_grad)+'.png')
plot_xy_continuous_lable(time_grad, psi_hat_grad, "$Time, s$", "$\hat{\psi}(t)$", true)
saveas(gcf, path+subpath+'model_grad_psi_gamma_'+string(gamma_grad)+'.png')
close all

%%
TIME = 20;
gamma = 10000000;
sim_out = sim("model_without_loop.slx", TIME);

time = sim_out.tout;
y = squeeze(sim_out.logsout.get("y").Values.Data);
y_m = squeeze(sim_out.logsout.get("y_M").Values.Data);
e = squeeze(sim_out.logsout.get("e").Values.Data);
u = squeeze(sim_out.logsout.get("u").Values.Data);
psi_hat = (sim_out.logsout.get("psi_hat").Values.Data);

subpath = '';
plot_xy_continuous_lable_legend(time, [y_m y], "$Time, s$", "$y(t)$", {'$y_M$','$y$'}, true)
saveas(gcf, path+subpath+'model_fast_y_gamma_'+string(gamma)+'.png')
plot_xy_continuous_lable(time, e, "$Time, s$", "$e(t)$", true)
saveas(gcf, path+subpath+'model_fast_e_gamma_'+string(gamma)+'.png')
plot_xy_continuous_lable(time, u, "$Time, s$", "$u(t)$", true)
saveas(gcf, path+subpath+'model_fast_u_gamma_'+string(gamma)+'.png')
plot_xy_continuous_lable(time, psi_hat, "$Time, s$", "$\hat{\psi}(t)$", true)
saveas(gcf, path+subpath+'model_fast_psi_gamma_'+string(gamma)+'.png')
close all
%%
TIME = 150;
gamma_grad = 10000000;
sim_out_grad = sim("model_grad_wl.slx", TIME);

time_grad = sim_out_grad.tout;
y_grad = squeeze(sim_out_grad.logsout.get("y").Values.Data);
y_m_grad = squeeze(sim_out_grad.logsout.get("y_M").Values.Data);
e_grad = squeeze(sim_out_grad.logsout.get("e").Values.Data);
u_grad = squeeze(sim_out_grad.logsout.get("u").Values.Data);
psi_hat_grad = (sim_out_grad.logsout.get("psi_hat").Values.Data);

subpath = '';
plot_xy_continuous_lable_legend(time_grad, [y_m_grad y_grad], "$Time, s$", "$y(t)$", {'$y_M$','$y$'}, true)
saveas(gcf, path+subpath+'model_grad_y_gamma_'+string(gamma_grad)+'.png')
plot_xy_continuous_lable(time_grad, e_grad, "$Time, s$", "$e(t)$", true)
saveas(gcf, path+subpath+'model_grad_e_gamma_'+string(gamma_grad)+'.png')
plot_xy_continuous_lable(time_grad, u_grad, "$Time, s$", "$u(t)$", true)
saveas(gcf, path+subpath+'model_grad_u_gamma_'+string(gamma_grad)+'.png')
plot_xy_continuous_lable(time_grad, psi_hat_grad, "$Time, s$", "$\hat{\psi}(t)$", true)
saveas(gcf, path+subpath+'model_grad_psi_gamma_'+string(gamma_grad)+'.png')
close all
%%
TIME = 10;
gamma = 100000000;
sim_out = sim("model_without_loop.slx", TIME);

time = sim_out.tout;
y = squeeze(sim_out.logsout.get("y").Values.Data);
y_m = squeeze(sim_out.logsout.get("y_M").Values.Data);
e = squeeze(sim_out.logsout.get("e").Values.Data);
u = squeeze(sim_out.logsout.get("u").Values.Data);
psi_hat = (sim_out.logsout.get("psi_hat").Values.Data);

subpath = '';
plot_xy_continuous_lable_legend(time, [y_m y], "$Time, s$", "$y(t)$", {'$y_M$','$y$'}, true)
saveas(gcf, path+subpath+'model_fast_y_gamma_'+string(gamma)+'.png')
plot_xy_continuous_lable(time, e, "$Time, s$", "$e(t)$", true)
saveas(gcf, path+subpath+'model_fast_e_gamma_'+string(gamma)+'.png')
plot_xy_continuous_lable(time, u, "$Time, s$", "$u(t)$", true)
saveas(gcf, path+subpath+'model_fast_u_gamma_'+string(gamma)+'.png')
plot_xy_continuous_lable(time, psi_hat, "$Time, s$", "$\hat{\psi}(t)$", true)
saveas(gcf, path+subpath+'model_fast_psi_gamma_'+string(gamma)+'.png')
% close all
%%
TIME = 100;
gamma_grad = 100000000;
sim_out_grad = sim("model_grad_wl.slx", TIME);

time_grad = sim_out_grad.tout;
y_grad = squeeze(sim_out_grad.logsout.get("y").Values.Data);
y_m_grad = squeeze(sim_out_grad.logsout.get("y_M").Values.Data);
e_grad = squeeze(sim_out_grad.logsout.get("e").Values.Data);
u_grad = squeeze(sim_out_grad.logsout.get("u").Values.Data);
psi_hat_grad = (sim_out_grad.logsout.get("psi_hat").Values.Data);

subpath = '';
plot_xy_continuous_lable_legend(time_grad, [y_m_grad y_grad], "$Time, s$", "$y(t)$", {'$y_M$','$y$'}, true)
saveas(gcf, path+subpath+'model_grad_y_gamma_'+string(gamma_grad)+'.png')
plot_xy_continuous_lable(time_grad, e_grad, "$Time, s$", "$e(t)$", true)
saveas(gcf, path+subpath+'model_grad_e_gamma_'+string(gamma_grad)+'.png')
plot_xy_continuous_lable(time_grad, u_grad, "$Time, s$", "$u(t)$", true)
saveas(gcf, path+subpath+'model_grad_u_gamma_'+string(gamma_grad)+'.png')
plot_xy_continuous_lable(time_grad, psi_hat_grad, "$Time, s$", "$\hat{\psi}(t)$", true)
saveas(gcf, path+subpath+'model_grad_psi_gamma_'+string(gamma_grad)+'.png')
close all

%% Save model as pdf
% print('-smodel_without_loop', '-dpdf', 'out/model')
% print('-smodel_grad_wl', '-dpdf', 'out/model_grad')