path = "out/";
config;
%% Task 1
TIME = 100;
sigma = 10;
gamma = 10;

sim_out = sim("model1.slx", TIME);

time = sim_out.tout;
x = squeeze(sim_out.logsout.get("x").Values.Data);
x_m = sim_out.logsout.get("x_m").Values.Data;
e = squeeze(sim_out.logsout.get("e").Values.Data);
delta = squeeze(sim_out.logsout.get("delta").Values.Data);

task_number = 1;
set_number = 1;
plotTask2(time, x, x_m, "$Time, s$", "$y(t)$")
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'.png')
plot_xy_continuous_lable(time, e, "$Time, s$", "$e(t)$", true)
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'e'+'.png')
close all;
%%
gamma = 100;

sim_out = sim("model1.slx", TIME);

time = sim_out.tout;
x = squeeze(sim_out.logsout.get("x").Values.Data);
x_m = sim_out.logsout.get("x_m").Values.Data;
e = squeeze(sim_out.logsout.get("e").Values.Data);
delta = squeeze(sim_out.logsout.get("delta").Values.Data);

task_number = 1;
set_number = 2;
plotTask2(time, x, x_m, "$Time, s$", "$y(t)$")
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'.png')
plot_xy_continuous_lable(time, e, "$Time, s$", "$e(t)$", true)
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'e'+'.png')
close all;

%%
gamma = 1000;

sim_out = sim("model1.slx", TIME);

time = sim_out.tout;
x = squeeze(sim_out.logsout.get("x").Values.Data);
x_m = sim_out.logsout.get("x_m").Values.Data;
e = squeeze(sim_out.logsout.get("e").Values.Data);
delta = squeeze(sim_out.logsout.get("delta").Values.Data);

task_number = 1;
set_number = 3;
plotTask2(time, x, x_m, "$Time, s$", "$y(t)$")
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'.png')
plot_xy_continuous_lable(time, e, "$Time, s$", "$e(t)$", true)
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'e'+'.png')
close all;

%%
gamma = 10000;

sim_out = sim("model1.slx", TIME);

time = sim_out.tout;
x = squeeze(sim_out.logsout.get("x").Values.Data);
x_m = sim_out.logsout.get("x_m").Values.Data;
e = squeeze(sim_out.logsout.get("e").Values.Data);
delta = squeeze(sim_out.logsout.get("delta").Values.Data);

task_number = 1;
set_number = 4;
plotTask2(time, x, x_m, "$Time, s$", "$y(t)$")
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'.png')
plot_xy_continuous_lable(time, e, "$Time, s$", "$e(t)$", true)
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'e'+'.png')
close all;


%%
disturbance = 1;
gamma = 10;

sim_out = sim("model1.slx", TIME);

time = sim_out.tout;
x = squeeze(sim_out.logsout.get("x").Values.Data);
x_m = sim_out.logsout.get("x_m").Values.Data;
e = squeeze(sim_out.logsout.get("e").Values.Data);
delta = squeeze(sim_out.logsout.get("delta").Values.Data);

task_number = 1;
set_number = 5;
plotTask2(time, x, x_m, "$Time, s$", "$y(t)$")
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'.png')
plot_xy_continuous_lable(time, e, "$Time, s$", "$e(t)$", true)
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'e'+'.png')
close all;
%%
gamma = 100;

sim_out = sim("model1.slx", TIME);

time = sim_out.tout;
x = squeeze(sim_out.logsout.get("x").Values.Data);
x_m = sim_out.logsout.get("x_m").Values.Data;
e = squeeze(sim_out.logsout.get("e").Values.Data);
delta = squeeze(sim_out.logsout.get("delta").Values.Data);

task_number = 1;
set_number = 6;
plotTask2(time, x, x_m, "$Time, s$", "$y(t)$")
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'.png')
plot_xy_continuous_lable(time, e, "$Time, s$", "$e(t)$", true)
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'e'+'.png')
close all;

%%
gamma = 1000;

sim_out = sim("model1.slx", TIME);

time = sim_out.tout;
x = squeeze(sim_out.logsout.get("x").Values.Data);
x_m = sim_out.logsout.get("x_m").Values.Data;
e = squeeze(sim_out.logsout.get("e").Values.Data);
delta = squeeze(sim_out.logsout.get("delta").Values.Data);

task_number = 1;
set_number = 7;
plotTask2(time, x, x_m, "$Time, s$", "$y(t)$")
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'.png')
plot_xy_continuous_lable(time, e, "$Time, s$", "$e(t)$", true)
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'e'+'.png')
close all;

%%
gamma = 10000;

sim_out = sim("model1.slx", TIME);

time = sim_out.tout;
x = squeeze(sim_out.logsout.get("x").Values.Data);
x_m = sim_out.logsout.get("x_m").Values.Data;
e = squeeze(sim_out.logsout.get("e").Values.Data);
delta = squeeze(sim_out.logsout.get("delta").Values.Data);

task_number = 1;
set_number = 8;
plotTask2(time, x, x_m, "$Time, s$", "$y(t)$")
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'.png')
plot_xy_continuous_lable(time, e, "$Time, s$", "$e(t)$", true)
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'e'+'.png')
close all;
%% Save model as pdf
print('-smodel1', '-dpdf', 'out/model1')