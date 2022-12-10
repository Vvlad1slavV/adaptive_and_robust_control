%% Variant 1

a_1 = -1;
a_0 = -2;
b_1 = 1;
b_0 = 7;
b_m = b_0;

k_M = 10;
k_M_1 = 5;
k_M_0 = 6;
k_0 = 1;
k_1 = 2;


object_num = [b_0];
object_denum = [1 a_1 a_0];
% K_M = [1 k_M];
K_M_g = [1 k_M_1 k_M_0];
% K_M_g = K_M;
K_M = K_M_g;

% Lambda = [0     1
%          -k_0   -k_1];
Lambda = -k_0;

nu1 = zeros(length(Lambda), 1);
nu2 = zeros(length(Lambda), 1);
en1 = zeros(length(Lambda), 1);
en1(end) = 1;

omega_size = length(nu1) + length(nu2) + 1;
psi_hat_init_conds = zeros(omega_size, 1);
%%
s = tf('s');
l_1 = 12;
l_0 = 48;
L = 1/(l_1*s + l_0);

Lvec = L*eye(omega_size);
Lmat = L*eye(omega_size^2);

SysVec = ss(Lvec);
SysMat = ss(Lmat);

K_M_bar = tf(1, K_M);
K_M_mat = K_M_bar*eye(omega_size);
SysKM = ss(K_M_mat);
%%

gamma = 10000;

