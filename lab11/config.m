%% Variant 12

t_p = 0.9;
sigma_max = 0.15;

A = [-9 1;
     -4 1];
b = [3;
     3];
C = eye(2);
D = [0; 0];
d = b;

% Расчет параметра w0 на основе желаемого время переходного процесса t
omega_0 = 2.9/t_p; % см Мирошник 6.3.1
% p^2 + sqrt(2)*omega_0^2*p + omega_0^2==0
a_m_1 = sqrt(2)*omega_0;
a_m_0 = omega_0*omega_0;

A_0f = [     0      1;
       -a_m_0 -a_m_1];

H = [1 1];
M = lyap(-A, A_m, b*H);
% cvx_begin sdp
% variable M(2,2)
% M*A_m - A*M == -b*H;
% cvx_end
K = H/M;

