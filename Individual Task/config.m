%% Variant 12

a_1 = -1;
a_0 = 2;
b_1 = 1;
b_0 = 7;

k_M_1 = 12;
k_M_0 = 36;
k_0 = 2;

object_num = [b_1 b_0];
object_denum = [1 a_1 a_0];
K_M = [1 k_M_1 k_M_0];

Lambda = -2;


%%
s = tf('s');
% L 