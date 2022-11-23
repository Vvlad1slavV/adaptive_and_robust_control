%% Variant 12
t_p = 0.9;
sigma_max = 0.15;

A = [-9 1;
     -4 1];
b = [3;
     3];
C = [1 0];
D = [0; 0];
d = b;

% Расчет параметра w0 на основе желаемого время переходного процесса t
omega_0 = 2.9/t_p; % см Мирошник 6.3.1
% p^2 + sqrt(2)*omega_0^2*p + omega_0^2==0
a_m1 = sqrt(2)*omega_0;
a_m0 = omega_0*omega_0;

k_g1 = 1.2;
k_g0 = 0.36;

A_0g = [0          1;
         -k_g0 -k_g1];
b_0g = [0;
         1];

A_m = [     0      1;
       -a_m0 -a_m1];

H = [1 1];
M = lyap(-A, A_m, b*H);
K = H/M;

Q = 0.5*eye(2);
P = lyap(A_m', Q);
Nd = b_f_0
cvx_begin sdp
variable N(2,2)
N*d == b_0f;
cvx_end
