path = "out/";
config;
close all
%%
TIME = 1500;
gamma = 100000;
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
TIME = 200;
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
% close all
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
TIME = 8;
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
close all
%%
TIME = 8;
gamma = 10000000000;
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