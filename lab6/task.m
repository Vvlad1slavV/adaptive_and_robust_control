path = "out/";
config;
%%
TIME = 15000;
gamma = 1.2;

sim_out = sim("model1.slx", TIME);

time = sim_out.tout;
x = squeeze(sim_out.logsout.get("x").Values.Data);
x_hat = squeeze(sim_out.logsout.get("x_hat").Values.Data)';
y = squeeze(sim_out.logsout.get("y").Values.Data);
y_hat = squeeze(sim_out.logsout.get("y_hat").Values.Data);
omega = sim_out.logsout.get("omega").Values.Data;
eplsilon = y - y_hat;
e = x - x_hat;
% plot(time, e)

x_norm = sqrt((x-x_hat)'*(x-x_hat));

task_number = 1;
set_number = 1;
plot(time, x_norm, "$Time, s$", "$x(t)$")
grid on
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'.png')
% plot_xy_continuous_lable(time, e, "$Time, s$", "$e(t)$", true)
% saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'e'+'.png')
close all;
%%
TIME = 15000;
gamma = 0.02;

sim_out = sim("model2.slx", TIME);

time = sim_out.tout;
x = squeeze(sim_out.logsout.get("x").Values.Data);
x_hat = squeeze(sim_out.logsout.get("x_hat").Values.Data)';
y = squeeze(sim_out.logsout.get("y").Values.Data);
y_hat = squeeze(sim_out.logsout.get("y_hat").Values.Data);
omega = sim_out.logsout.get("omega").Values.Data;
eplsilon = y - y_hat;
e = x - x_hat;
plot(time, e)