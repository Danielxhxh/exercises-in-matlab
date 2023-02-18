f = @(x)(x.^2) .* exp(-x);

n = [5; 10; 20; 40];

%Calcolo il valore estrapolato p(0)
p0 = Estrapolazione(0, 1, f, n);

disp(p0);