%%
s = tf('s');
L = 1/s;

Lvec = L*eye(2);
Lmat = L*eye(4);

SysVec = ss(Lvec);
SysMat = ss(Lmat);
