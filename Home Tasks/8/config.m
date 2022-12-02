syms t1 t2

Asym = [t1 7;
     t2 2];
B = [0;9];
C = [1 0];

t1 = -5.5; t2 = 0.1;
% t1 = -6; t2 = -2;
A = double(subs(Asym));
eig(A)

syms s
W = C*inv(s*eye(2) - A)*B;
[b, a] = numden(W);
b = flip(double(coeffs(b)))
a = flip(double(coeffs(a)))

b_0 = b(1)

Lambda = -1;
k_0 = 1;

gamma = 1000;
% gamma = 1000;