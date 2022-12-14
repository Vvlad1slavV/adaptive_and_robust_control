%% Variant 12

a_0 = -10;
a_1 = -1;
b_0 = 3;

a_m_0 = 69;
a_m_1 = 15;

k = b_0/a_m_0;

A = [   0    1;
     -a_0 -a_1];
b = [0;
     b_0];

A_m = [     0      1;
       -a_m_0 -a_m_1];
b_m = [0;
       a_m_0];

theta_1 = (a_0 - a_m_0)/b_0;
theta_2 = (a_1 - a_m_1)/b_0;
theta = [theta_1;
         theta_2];

x_0 = [1; 0];

t_p = 0.9;
% sigma = 0.15;

Q = 0.5*eye(2);
P = lyap(A_m', Q);

disturbance = 0;