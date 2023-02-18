syms x;
funx = (x.^2) .* exp(-x);

n = [5; 10; 20; 40];

%Integrale di funx
f = matlabFunction(funx);

I = integral(f, 0, 1);

%Calcolo il valore estrapolato p(0)
p0 = Estrapolazione(0, 1, f, n);

err = abs(I - p0);

%Troviamo un n che soddisfa la regola
f_2 = matlabFunction(diff(funx,2));
K = abs(max(f_2(linspace(0,1))));

n = @(e) sqrt(((1-0)^3*K)/(12*e));
x = ceil(n(err));

In = FormulaDeiTrapezi(0, 1, f, x);

%Costruisco la tabella
data = table(x, In, abs(In - I), err);
data.Properties.VariableNames = {'n' 'In' '|In - I|' 'epsilon'};
disp(data);