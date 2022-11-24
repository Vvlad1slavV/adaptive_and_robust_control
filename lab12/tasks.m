path = "out/";
config;
%%
gamma = 10;
x_0 = [0;0];
TIME = 20;

sim_out = sim("model1.slx", TIME);

time = sim_out.tout;
x = squeeze(sim_out.logsout.get("x").Values.Data);
u = squeeze(sim_out.logsout.get("u").Values.Data);
f = (sim_out.logsout.get("f").Values.Data);

plot_xy_continuous_lable(time, x, "$Time, s$", "$x(t)$", true)
saveas(gcf, path+'task_x_gamma_'+string(gamma)+'_x0.png')
plot_xy_continuous_lable(time, u, "$Time, s$", "$u(t)$", true)
saveas(gcf, path+'task_u_gamma_'+string(gamma)+'_x0.png')
close all;

%%
gamma = 1;
x_0 = [0;0];
TIME = 20;

sim_out = sim("model1.slx", TIME);

time = sim_out.tout;
x = squeeze(sim_out.logsout.get("x").Values.Data);
u = squeeze(sim_out.logsout.get("u").Values.Data);
f = (sim_out.logsout.get("f").Values.Data);

plot_xy_continuous_lable(time, x, "$Time, s$", "$x(t)$", true)
saveas(gcf, path+'task_x_gamma_'+string(gamma)+'_x0.png')
plot_xy_continuous_lable(time, u, "$Time, s$", "$u(t)$", true)
saveas(gcf, path+'task_u_gamma_'+string(gamma)+'_x0.png')
close all;

%%
gamma = 10;
x_0 = [20;20];
TIME = 20;

sim_out = sim("model1.slx", TIME);

time = sim_out.tout;
x = squeeze(sim_out.logsout.get("x").Values.Data);
u = squeeze(sim_out.logsout.get("u").Values.Data);
f = (sim_out.logsout.get("f").Values.Data);

plot_xy_continuous_lable(time, x, "$Time, s$", "$x(t)$", true)
saveas(gcf, path+'task_x_gamma_'+string(gamma)+'.png')
plot_xy_continuous_lable(time, u, "$Time, s$", "$u(t)$", true)
saveas(gcf, path+'task_u_gamma_'+string(gamma)+'.png')
close all;

%%
gamma = 1;
x_0 = [20;20];
TIME = 20;

sim_out = sim("model1.slx", TIME);

time = sim_out.tout;
x = squeeze(sim_out.logsout.get("x").Values.Data);
u = squeeze(sim_out.logsout.get("u").Values.Data);
f = (sim_out.logsout.get("f").Values.Data);

plot_xy_continuous_lable(time, x, "$Time, s$", "$x(t)$", true)
saveas(gcf, path+'task_x_gamma_'+string(gamma)+'.png')
plot_xy_continuous_lable(time, u, "$Time, s$", "$u(t)$", true)
saveas(gcf, path+'task_u_gamma_'+string(gamma)+'.png')
close all;