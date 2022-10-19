path = "out/";
%% Task 2
TIME = 100;
sigma = 100;
gamma = 100;

sim_out = sim("model2.slx", TIME);

time = sim_out.tout;
x = squeeze(sim_out.logsout.get("x").Values.Data);
x_m = sim_out.logsout.get("x_m").Values.Data;
e = squeeze(sim_out.logsout.get("e").Values.Data);
delta = squeeze(sim_out.logsout.get("delta").Values.Data);
theta_hat = squeeze(sim_out.logsout.get("theta_hat").Values.Data);
theta_tilde = theta - theta_hat;

task_number = 2;
set_number = 1;
plotTask2(time, x, x_m, "$Time, s$", "$y(t)$")
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'.png')
plot_xy_continuous_lable(time, e, "$Time, s$", "$e(t)$", true)
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'e'+'.png')
plot_xy_continuous_lable(time, theta_tilde, "$Time, s$", "$\tilde{\theta}(t)$", true)
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'theta_tilde'+'.png')
close all;
%%
gamma = 10000;

sim_out = sim("model2.slx", TIME);

time = sim_out.tout;
x = squeeze(sim_out.logsout.get("x").Values.Data);
x_m = sim_out.logsout.get("x_m").Values.Data;
e = squeeze(sim_out.logsout.get("e").Values.Data);
delta = squeeze(sim_out.logsout.get("delta").Values.Data);
theta_hat = squeeze(sim_out.logsout.get("theta_hat").Values.Data);
theta_tilde = theta - theta_hat;

task_number = 2;
set_number = 2;
plotTask2(time, x, x_m, "$Time, s$", "$y(t)$")
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'.png')
plot_xy_continuous_lable(time, e, "$Time, s$", "$e(t)$", true)
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'e'+'.png')
plot_xy_continuous_lable(time, theta_tilde, "$Time, s$", "$\tilde{\theta}(t)$", true)
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'theta_tilde'+'.png')
close all;

%%
disturbance = 1;
sigma = 100;
gamma = 100;

sim_out = sim("model2.slx", TIME);

time = sim_out.tout;
x = squeeze(sim_out.logsout.get("x").Values.Data);
x_m = sim_out.logsout.get("x_m").Values.Data;
e = squeeze(sim_out.logsout.get("e").Values.Data);
delta = squeeze(sim_out.logsout.get("delta").Values.Data);
theta_hat = squeeze(sim_out.logsout.get("theta_hat").Values.Data);
theta_tilde = theta - theta_hat;

task_number = 2;
set_number = 3;
plotTask2(time, x, x_m, "$Time, s$", "$y(t)$")
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'.png')
plot_xy_continuous_lable(time, e, "$Time, s$", "$e(t)$", true)
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'e'+'.png')
plot_xy_continuous_lable(time, theta_tilde, "$Time, s$", "$\tilde{\theta}(t)$", true)
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'theta_tilde'+'.png')
close all;
%%
gamma = 10000;

sim_out = sim("model2.slx", TIME);

time = sim_out.tout;
x = squeeze(sim_out.logsout.get("x").Values.Data);
x_m = sim_out.logsout.get("x_m").Values.Data;
e = squeeze(sim_out.logsout.get("e").Values.Data);
delta = squeeze(sim_out.logsout.get("delta").Values.Data);
theta_hat = squeeze(sim_out.logsout.get("theta_hat").Values.Data);
theta_tilde = theta - theta_hat;

task_number = 2;
set_number = 4;
plotTask2(time, x, x_m, "$Time, s$", "$y(t)$")
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'.png')
plot_xy_continuous_lable(time, e, "$Time, s$", "$e(t)$", true)
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'e'+'.png')
plot_xy_continuous_lable(time, theta_tilde, "$Time, s$", "$\tilde{\theta}(t)$", true)
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'theta_tilde'+'.png')
close all;

%%
disturbance = 0;
sigma = 10;
gamma = 100;

sim_out = sim("model2.slx", TIME);

time = sim_out.tout;
x = squeeze(sim_out.logsout.get("x").Values.Data);
x_m = sim_out.logsout.get("x_m").Values.Data;
e = squeeze(sim_out.logsout.get("e").Values.Data);
delta = squeeze(sim_out.logsout.get("delta").Values.Data);
theta_hat = squeeze(sim_out.logsout.get("theta_hat").Values.Data);
theta_tilde = theta - theta_hat;

task_number = 2;
set_number = 5;
plotTask2(time, x, x_m, "$Time, s$", "$y(t)$")
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'.png')
plot_xy_continuous_lable(time, e, "$Time, s$", "$e(t)$", true)
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'e'+'.png')
plot_xy_continuous_lable(time, theta_tilde, "$Time, s$", "$\tilde{\theta}(t)$", true)
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'theta_tilde'+'.png')
close all;

%%
disturbance = 1;
sigma = 10;
gamma = 100;

sim_out = sim("model2.slx", TIME);

time = sim_out.tout;
x = squeeze(sim_out.logsout.get("x").Values.Data);
x_m = sim_out.logsout.get("x_m").Values.Data;
e = squeeze(sim_out.logsout.get("e").Values.Data);
delta = squeeze(sim_out.logsout.get("delta").Values.Data);
theta_hat = squeeze(sim_out.logsout.get("theta_hat").Values.Data);
theta_tilde = theta - theta_hat;

task_number = 2;
set_number = 6;
plotTask2(time, x, x_m, "$Time, s$", "$y(t)$")
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'.png')
plot_xy_continuous_lable(time, e, "$Time, s$", "$e(t)$", true)
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'e'+'.png')
plot_xy_continuous_lable(time, theta_tilde, "$Time, s$", "$\tilde{\theta}(t)$", true)
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'theta_tilde'+'.png')
close all;
%% Save model as pdf
print('-smodel2', '-dpdf', 'out/model2')