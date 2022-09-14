config;

task_number = 3;
subtask_number = 1;
set_number = 1;

path = "out/";
%%
gamma = 100;
sim_out = sim("model3.slx", 100);

time = sim_out.tout;
u = sim_out.logsout.get("u").Values.Data;
g = sim_out.logsout.get("g").Values.Data;
x = sim_out.logsout.get("x").Values.Data;
x_m = sim_out.logsout.get("x_m").Values.Data;
e = sim_out.logsout.get("e").Values.Data;
theta_hat = squeeze(sim_out.logsout.get("theta_hat").Values.Data);

plotTask2(time, x, x_m, "$Time, s$", "$y(t)$")
saveas(gcf, path+'task'+string(task_number)+'_'+string(subtask_number)+'_'+string(set_number)+'.png')
set_number = set_number + 1;
plot_xy_continuous_lable(time, e,"$Time, s$","$e(t)$", true)
saveas(gcf, path+'task'+string(task_number)+'_'+string(subtask_number)+'_'+string(set_number)+'.png')
set_number = set_number + 1;
plot_xy_continuous_lable(time, repmat(theta, [1 length(theta_hat)]) - theta_hat, "$Time, s$", "$\tilde{\theta}(t)$", true);
saveas(gcf, path+'task'+string(task_number)+'_'+string(subtask_number)+'_'+string(set_number)+'.png')
set_number = set_number + 1;
%%
config;
A = A + [0   0;
        0.5  0.5];

sim_out = sim("model3.slx", 100);
time = sim_out.tout;
u = sim_out.logsout.get("u").Values.Data;
g = sim_out.logsout.get("g").Values.Data;
x = sim_out.logsout.get("x").Values.Data;
x_m = sim_out.logsout.get("x_m").Values.Data;
e = sim_out.logsout.get("e").Values.Data;
theta_hat = squeeze(sim_out.logsout.get("theta_hat").Values.Data);

plotTask2(time, x, x_m, "$Time, s$", "$y(t)$")
saveas(gcf, path+'task'+string(task_number)+'_'+string(subtask_number)+'_'+string(set_number)+'.png')
set_number = set_number + 1;
plot_xy_continuous_lable(time, e,"$Time, s$","$e(t)$", true)
saveas(gcf, path+'task'+string(task_number)+'_'+string(subtask_number)+'_'+string(set_number)+'.png')
set_number = set_number + 1;
plot_xy_continuous_lable(time, repmat(theta, [1 length(theta_hat)]) - theta_hat, "$Time, s$", "$\tilde{\theta}(t)$", true);
saveas(gcf, path+'task'+string(task_number)+'_'+string(subtask_number)+'_'+string(set_number)+'.png')
set_number = set_number + 1;
%%
config;
A = A + [0   0;
        0.5  20];

sim_out = sim("model3.slx", 100);
time = sim_out.tout;
u = sim_out.logsout.get("u").Values.Data;
g = sim_out.logsout.get("g").Values.Data;
x = sim_out.logsout.get("x").Values.Data;
x_m = sim_out.logsout.get("x_m").Values.Data;
e = sim_out.logsout.get("e").Values.Data;
theta_hat = squeeze(sim_out.logsout.get("theta_hat").Values.Data);

plotTask2(time, x, x_m, "$Time, s$", "$y(t)$")
saveas(gcf, path+'task'+string(task_number)+'_'+string(subtask_number)+'_'+string(set_number)+'.png')
set_number = set_number + 1;
plot_xy_continuous_lable(time, e,"$Time, s$","$e(t)$", true)
saveas(gcf, path+'task'+string(task_number)+'_'+string(subtask_number)+'_'+string(set_number)+'.png')
set_number = set_number + 1;
plot_xy_continuous_lable(time, repmat(theta, [1 length(theta_hat)]) - theta_hat, "$Time, s$", "$\tilde{\theta}(t)$", true);
saveas(gcf, path+'task'+string(task_number)+'_'+string(subtask_number)+'_'+string(set_number)+'.png')
set_number = set_number + 1;

%%
config;
subtask_number = 2;
set_number = 1;

gamma = 100;
sim_out = sim("model3.slx", 100);

time = sim_out.tout;
u = sim_out.logsout.get("u").Values.Data;
g = sim_out.logsout.get("g").Values.Data;
x = sim_out.logsout.get("x").Values.Data;
x_m = sim_out.logsout.get("x_m").Values.Data;
e = sim_out.logsout.get("e").Values.Data;
theta_hat = squeeze(sim_out.logsout.get("theta_hat").Values.Data);

plotTask2(time, x, x_m, "$Time, s$", "$y(t)$")
saveas(gcf, path+'task'+string(task_number)+'_'+string(subtask_number)+'_'+string(set_number)+'.png')
set_number = set_number + 1;
plot_xy_continuous_lable(time, e,"$Time, s$","$e(t)$", true)
saveas(gcf, path+'task'+string(task_number)+'_'+string(subtask_number)+'_'+string(set_number)+'.png')
set_number = set_number + 1;
plot_xy_continuous_lable(time, repmat(theta, [1 length(theta_hat)]) - theta_hat, "$Time, s$", "$\tilde{\theta}(t)$", true);
saveas(gcf, path+'task'+string(task_number)+'_'+string(subtask_number)+'_'+string(set_number)+'.png')
set_number = set_number + 1;

%%

gamma = 10;
sim_out = sim("model3.slx", 100);

time = sim_out.tout;
u = sim_out.logsout.get("u").Values.Data;
g = sim_out.logsout.get("g").Values.Data;
x = sim_out.logsout.get("x").Values.Data;
x_m = sim_out.logsout.get("x_m").Values.Data;
e = sim_out.logsout.get("e").Values.Data;
theta_hat = squeeze(sim_out.logsout.get("theta_hat").Values.Data);

plotTask2(time, x, x_m, "$Time, s$", "$y(t)$")
saveas(gcf, path+'task'+string(task_number)+'_'+string(subtask_number)+'_'+string(set_number)+'.png')
set_number = set_number + 1;
plot_xy_continuous_lable(time, e,"$Time, s$","$e(t)$", true)
saveas(gcf, path+'task'+string(task_number)+'_'+string(subtask_number)+'_'+string(set_number)+'.png')
set_number = set_number + 1;
plot_xy_continuous_lable(time, repmat(theta, [1 length(theta_hat)]) - theta_hat, "$Time, s$", "$\tilde{\theta}(t)$", true);
saveas(gcf, path+'task'+string(task_number)+'_'+string(subtask_number)+'_'+string(set_number)+'.png')
set_number = set_number + 1;

%%
gamma = 1000;
sim_out = sim("model3.slx", 100);

time = sim_out.tout;
u = sim_out.logsout.get("u").Values.Data;
g = sim_out.logsout.get("g").Values.Data;
x = sim_out.logsout.get("x").Values.Data;
x_m = sim_out.logsout.get("x_m").Values.Data;
e = sim_out.logsout.get("e").Values.Data;
theta_hat = squeeze(sim_out.logsout.get("theta_hat").Values.Data);

plotTask2(time, x, x_m, "$Time, s$", "$y(t)$")
saveas(gcf, path+'task'+string(task_number)+'_'+string(subtask_number)+'_'+string(set_number)+'.png')
set_number = set_number + 1;
plot_xy_continuous_lable(time, e,"$Time, s$","$e(t)$", true)
saveas(gcf, path+'task'+string(task_number)+'_'+string(subtask_number)+'_'+string(set_number)+'.png')
set_number = set_number + 1;
plot_xy_continuous_lable(time, repmat(theta, [1 length(theta_hat)]) - theta_hat, "$Time, s$", "$\tilde{\theta}(t)$", true);
saveas(gcf, path+'task'+string(task_number)+'_'+string(subtask_number)+'_'+string(set_number)+'.png')
set_number = set_number + 1;

%%
config;
subtask_number = 3;
set_number = 1;

sim_out = sim("model31.slx", 50);

time = sim_out.tout;
u = sim_out.logsout.get("u").Values.Data;
g = sim_out.logsout.get("g").Values.Data;
x = sim_out.logsout.get("x").Values.Data;
x_m = sim_out.logsout.get("x_m").Values.Data;
e = sim_out.logsout.get("e").Values.Data;
theta_hat = squeeze(sim_out.logsout.get("theta_hat").Values.Data);

plotTask2(time, x, x_m, "$Time, s$", "$y(t)$")
saveas(gcf, path+'task'+string(task_number)+'_'+string(subtask_number)+'_'+string(set_number)+'.png')
set_number = set_number + 1;
plot_xy_continuous_lable(time, e,"$Time, s$","$e(t)$", true)
saveas(gcf, path+'task'+string(task_number)+'_'+string(subtask_number)+'_'+string(set_number)+'.png')
set_number = set_number + 1;
plot_xy_continuous_lable(time, repmat(theta, [1 length(theta_hat)]) - theta_hat, "$Time, s$", "$\tilde{\theta}(t)$", true);
saveas(gcf, path+'task'+string(task_number)+'_'+string(subtask_number)+'_'+string(set_number)+'.png')
set_number = set_number + 1;


