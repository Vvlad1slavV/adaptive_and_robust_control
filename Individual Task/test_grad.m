path = "out/";
config;
%%
gamma = 1000;
TIME = 500;

sim_out = sim("model_grad.slx", TIME);

time = sim_out.tout;
y = squeeze(sim_out.logsout.get("y").Values.Data);
e = squeeze(sim_out.logsout.get("e").Values.Data);
g = squeeze(sim_out.logsout.get("g").Values.Data);
y_M = squeeze(sim_out.logsout.get("y_M").Values.Data);
u = squeeze(sim_out.logsout.get("u").Values.Data);
psi_hat = (sim_out.logsout.get("psi_hat").Values.Data);

%%
plot(time, [y_M y])
ylim([-100 100])

%%
plot(time, e)
ylim([-0.1 0.1])