
%% Task 1
config;
sim_out = sim("model1.slx", 2);

time = sim_out.tout;
y = sim_out.y;
plot(time, y);
%%

sim_out = sim("model2.slx", 2);

time = sim_out.tout;

u = sim_out.logsout.get("u").Values.Data;
g = sim_out.logsout.get("g").Values.Data;
x = sim_out.logsout.get("x").Values.Data;
x_m = sim_out.logsout.get("x_m").Values.Data;
e = sim_out.logsout.get("e").Values.Data;

%%

