syms x
f = x.^2 .* exp(-x);
I = int(f, 0, 1);

disp(I);
