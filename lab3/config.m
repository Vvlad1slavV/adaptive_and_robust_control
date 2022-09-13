%% Variant 12
%Исходные данные 
t_p = 0.9; %Переходной процесс
sigma = 0.15; %Перерегулирование

a_0 = -10;
a_1 = -1;
b_0 = 3;

a_m_0 = 69;
a_m_1 = 15;
b_m_0 = a_m_0;


A = [   0    1;
     -a_0 -a_1];
b = [0;
     b_0];

C = [1 0];

A_m = [     0      1;
       -a_m_0 -a_m_1];
b_m = [0;
       a_m_0];
C_m = C;
eig(A_m)

theta_1 = (a_0 - a_m_0)/b_0;
theta_2 = (a_1 - a_m_1)/b_0;

theta = [theta_1;
         theta_2];

kappa = b_0/a_m_0;

% 
% A_m = A + b*theta';
% b_m = b/kapa;
% C_m = C;


