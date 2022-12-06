%% Variant 1

a_1 = -1;
a_0 = 2;
b_1 = 1;
b_0 = 7;

k_M = 10;
k_0 = 1;

object_num = [b_1 b_0];
object_denum = [1 a_1 a_0];
K_M = [1 k_M];

Lambda = -k_0;

%%
s = tf('s');
l_1 = 12;
l_0 = 36;
L = 1/(l_1*s + l_0);

Lvec = L*eye(3);
Lmat = L*eye(9);

SysVec = ss(Lvec);
SysMat = ss(Lmat);

%%

psi_hat_init_conds = [0;0;0];
nu1 =  0;
nu2 = 0;

gamma = 10000;

