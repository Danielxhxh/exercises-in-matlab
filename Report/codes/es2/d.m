f = @(x)exp(x);

%Il valore esatto del integrale della funzione
I = integral(f, 0, 1);

%Vettore dei n
nV = [2; 4; 8; 16];

%Valore p(0)
p0 = Estrapolazione(0, 1, f, nV);

%Calcoliamo il vettore dei In
In = zeros(4, 1);
for i=1:4
    In(i) = FormulaDeiTrapezi(0, 1, f, nV(i));
end

%Confrontiamo InV, p(0) con I
err = abs([In; p0] - ones(5,1)*I);

data = table([In; p0], ones(5,1)*I, err);
data.Properties.VariableNames = {'In, p(0)' 'I' '|I - In|'};

disp(data);