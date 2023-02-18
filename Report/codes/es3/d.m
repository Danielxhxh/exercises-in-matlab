f = @(x)(x.^2) .* exp(-x);

n = [5; 10; 20; 40];

%Integrale di f
I = integral(f, 0, 1);

%Calcolo la formula dei trapezi per ogni n
In = zeros(4, 1);
for i=1:4
    In(i) = FormulaDeiTrapezi(0, 1, f, n(i));
end

%Calcolo il valore estrapolato p(0)
p0 = Estrapolazione(0, 1, f, n);

%Mostro la tabella
data = table(In, abs(In - I));
data.Properties.VariableNames = {'In' '|In - I|'};

data1 = table(p0, abs(p0 - I));
data1.Properties.VariableNames = {'p(0)' '|p(0) - I|'};

disp(data);
disp(data1);