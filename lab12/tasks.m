path = "out/";
config;
%%
gamma = 0.1;
TIME = 150;

sim_out = sim("model1.slx", TIME);

time = sim_out.tout;
epsilon = squeeze(sim_out.logsout.get("epsilon").Values.Data);
u = squeeze(sim_out.logsout.get("u").Values.Data);

plot_xy_continuous_lable(time, u, "$Time, s$", "$u(t)$", true)
saveas(gcf, path+'task_u_gamma_'+string(gamma)+'.png')
plot_xy_continuous_lable(time, epsilon, "$Time, s$", "$\varepsilon$", true)
saveas(gcf, path+'task_eps_gamma_'+string(gamma)+'.png')
close all;

%%
gamma = 0.5;
TIME = 150;

sim_out = sim("model1.slx", TIME);

time = sim_out.tout;
epsilon = squeeze(sim_out.logsout.get("epsilon").Values.Data);
u = squeeze(sim_out.logsout.get("u").Values.Data);

plot_xy_continuous_lable(time, u, "$Time, s$", "$u(t)$", true)
saveas(gcf, path+'task_u_gamma_'+string(gamma)+'.png')
plot_xy_continuous_lable(time, epsilon, "$Time, s$", "$\varepsilon$", true)
saveas(gcf, path+'task_eps_gamma_'+string(gamma)+'.png')
close all;
%%
gamma = 1.1;
TIME = 1000;

sim_out = sim("model1.slx", TIME);

time = sim_out.tout;
epsilon = squeeze(sim_out.logsout.get("epsilon").Values.Data);
u = squeeze(sim_out.logsout.get("u").Values.Data);

plot_xy_continuous_lable(time, u, "$Time, s$", "$u(t)$", true)
saveas(gcf, path+'task_u_gamma_'+string(gamma)+'.png')
plot_xy_continuous_lable(time, epsilon, "$Time, s$", "$\varepsilon$", true)
saveas(gcf, path+'task_eps_gamma_'+string(gamma)+'.png')
close all;

