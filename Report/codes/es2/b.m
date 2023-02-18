syms x;
f = exp(x);
a = 0;
b = 1;

%Funzione che calcola n(e)
f_2 = matlabFunction(diff(f,2));
K = abs(max(f_2(linspace(a,b))));

ne = @(e) sqrt(((b-a)^3*K)/(12*e));

f = matlabFunction(f);

%Vettore colonna degli errori
eV = [10^(-1); 10^(-2); 10^(-3); 10^(-4); 10^(-5); 10^(-6); 10^(-7); 10^(-8); 10^(-9); 10^(-10)];

%Il valore esatto del integrale della funzione
I = integral(f, 0, 1);

%Creo i vettori che saranno le colonne della nostra tabella
I = ones(10, 1).*I;
In = zeros(10, 1); 
n = zeros(10, 1);
e = zeros(10, 1);

%Aggiorno i valori delle rige della tabella
for i=1:10 
    n(i) = ceil(ne(eV(i)));
    In(i) = FormulaDeiTrapezi(0, 1, f, n(i)); 
    e(i) = abs(I(i) - In(i));
end

%Creo la tabella
data = table(eV, n, In, I, e);

data.Properties.VariableNames = {'Epsilon' 'n' 'In' 'I' '|I - In|'};

disp(data);