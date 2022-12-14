%% Variant 12

a_0 = -10;
a_1 = -1;
b_0 = 3;

% Порядок системы - второй
% Тогда полином примет вид:
% D(l) = l^2 + 1.4*w0*l+w0^2
t = 0.9; % время переходного процесса

% Расчет с w0 = 1
w_0 = 1;
num = 1;
denum = [1 1.4*w_0 w_0*w_0];
% Расчет параметра w0 на основе желаемого время переходного процесса t
w_0 = 12.5/0.9;
denum = [1 1.4*w_0 w_0*w_0];
a_m_1 = 1.4*w_0;
a_m_0 = w_0*w_0;

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
disturbance = 0;

Q = 0.5*eye(2);
P = lyap(A_m', Q);
