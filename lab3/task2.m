
%%

sim_out = sim("model2.slx", 2);

time = sim_out.tout;
u = sim_out.logsout.get("u").Values.Data;
g = sim_out.logsout.get("g").Values.Data;
x = sim_out.logsout.get("x").Values.Data;
x_m = sim_out.logsout.get("x_m").Values.Data;
e = sim_out.logsout.get("e").Values.Data; +  

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

plot(time, e)

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

plot(time, e)