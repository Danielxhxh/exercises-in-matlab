syms x;
f = exp(x);
a = 0;
b = 1;

f_2 = matlabFunction(diff(f,2));
K = abs(max(f_2(linspace(a,b))));

n = @(e) sqrt(((b-a)^3*K)/(12*e));

disp(n);

