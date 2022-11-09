path = "out/";
config;
%%
gamma = 1000000;
g_t_value = 1;
TIME = 15;

sim_out = sim("Model1.slx", TIME);

time = sim_out.tout;
y = squeeze(sim_out.logsout.get("y").Values.Data);
y_M = squeeze(sim_out.logsout.get("y_M").Values.Data);
u = squeeze(sim_out.logsout.get("u").Values.Data);
psi_hat = (sim_out.logsout.get("psi_hat").Values.Data);

task_number = 2;
set_number = 1;
plot(time, y, time, y_M)
legend('y','y_M')
xlabel('$Time, s$','Interpreter','latex')
ylabel('$y(t)$','Interpreter','latex')
legend('y','y_M')
grid on
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'_'+'y'+'.png')
close all

plot(time, u)
xlabel('$Time, s$','Interpreter','latex')
ylabel('$u(t)$','Interpreter','latex')
grid on
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'_'+'u'+'.png')
close all

plot(time, psi_hat)
xlabel('$Time, s$','Interpreter','latex')
ylabel('$\hat{\psi}$','Interpreter','latex')
grid on
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'_'+'psi_hat'+'.png')
close all

%%
gamma = 1000;

sim_out = sim("Model1.slx", TIME);
time = sim_out.tout;
y = squeeze(sim_out.logsout.get("y").Values.Data);
y_M = squeeze(sim_out.logsout.get("y_M").Values.Data);
u = squeeze(sim_out.logsout.get("u").Values.Data);
psi_hat = (sim_out.logsout.get("psi_hat").Values.Data);

set_number = 2;
plot(time, y, time, y_M)
legend('y','y_M')
xlabel('$Time, s$','Interpreter','latex')
ylabel('$y(t)$','Interpreter','latex')
legend('y','y_M')
grid on
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'_'+'y'+'.png')
close all

plot(time, u)
xlabel('$Time, s$','Interpreter','latex')
ylabel('$u(t)$','Interpreter','latex')
grid on
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'_'+'u'+'.png')
close all

plot(time, psi_hat)
xlabel('$Time, s$','Interpreter','latex')
ylabel('$\hat{\psi}$','Interpreter','latex')
grid on
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'_'+'psi_hat'+'.png')
close all
%%
gamma = 0.01;

sim_out = sim("Model1.slx", TIME);

time = sim_out.tout;
y = squeeze(sim_out.logsout.get("y").Values.Data);
y_M = squeeze(sim_out.logsout.get("y_M").Values.Data);
u = squeeze(sim_out.logsout.get("u").Values.Data);
psi_hat = (sim_out.logsout.get("psi_hat").Values.Data);


set_number = 3;
plot(time, y, time, y_M)
legend('y','y_M')
xlabel('$Time, s$','Interpreter','latex')
ylabel('$y(t)$','Interpreter','latex')
legend('y','y_M')
grid on
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'_'+'y'+'.png')
close all

plot(time, u)
xlabel('$Time, s$','Interpreter','latex')
ylabel('$u(t)$','Interpreter','latex')
grid on
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'_'+'u'+'.png')
close all

plot(time, psi_hat)
xlabel('$Time, s$','Interpreter','latex')
ylabel('$\hat{\psi}$','Interpreter','latex')
grid on
saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'_'+'psi_hat'+'.png')
close all