
%% Task 1
config;
sim_out = sim("model1.slx", 15);

time = sim_out.tout;
y = sim_out.y;
plot(time, y);
%%