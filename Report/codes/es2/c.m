f = @(x)exp(x);

%Il valore esatto del integrale della funzione
I = integral( f, 0, 1);

%Vettore dei n
nV = [2; 4; 8; 16];

%Calcoliamo il vettore dei In
In = zeros(4, 1);
for i=1:4
    In(i) = FormulaDeiTrapezi(0, 1, f, nV(i));
end

%Vettore dei errori I-In per ogni n
err = abs(ones(4,1)*I - In);

data = table(nV, In, err);
data.Properties.VariableNames = {'n' 'In' '|I - In|'};

disp(data);
