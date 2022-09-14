task_number = 2;
set_number = 1;
path = "out/";

%%
config;
sim_out = sim("model2.slx", 4);

time = sim_out.tout;
u = sim_out.logsout.get("u").Values.Data;
g = sim_out.logsout.get("g").Values.Data;
x = sim_out.logsout.get("x").Values.Data;
x_m = sim_out.logsout.get("x_m").Values.Data;
e = sim_out.logsout.get("e").Values.Data;


% plot_xy_continuous_lable(time, g,"$Time, s$","$g(t)$", true)
% plot_xy_continuous_lable(time, [x x_m], "$Time, s$", "$y(t)$", true)
% plot_xy_continuous_lable(time, e,"$Time, s$","$e(t)$", true)

plotTask2(time, x, x_m, "$Time, s$", "$y(t)$")
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'.png')
set_number = set_number + 1;
plot_xy_continuous_lable(time, e,"$Time, s$","$e(t)$", true)
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'.png')
set_number = set_number + 1;
%%
config;
A = A + [0   0;
        0.5  0.5];

sim_out = sim("model2.slx", 10);
time = sim_out.tout;
u = sim_out.logsout.get("u").Values.Data;
g = sim_out.logsout.get("g").Values.Data;
x = sim_out.logsout.get("x").Values.Data;
x_m = sim_out.logsout.get("x_m").Values.Data;
e = sim_out.logsout.get("e").Values.Data;

plotTask2(time, x, x_m, "$Time, s$", "$y(t)$")
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'.png')
set_number = set_number + 1;
plot_xy_continuous_lable(time, e,"$Time, s$","$e(t)$", true)
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'.png')
set_number = set_number + 1;
%%
config;
A = A + [0   0;
        0.5  20];

sim_out = sim("model2.slx", 10);
time = sim_out.tout;
u = sim_out.logsout.get("u").Values.Data;
g = sim_out.logsout.get("g").Values.Data;
x = sim_out.logsout.get("x").Values.Data;
x_m = sim_out.logsout.get("x_m").Values.Data;
e = sim_out.logsout.get("e").Values.Data;

plotTask2(time, x, x_m, "$Time, s$", "$y(t)$")
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'.png')
set_number = set_number + 1;
plot_xy_continuous_lable(time, e,"$Time, s$","$e(t)$", true)
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'.png')
set_number = set_number + 1;