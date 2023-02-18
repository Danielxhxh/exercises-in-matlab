f = @(x)(x.^2) .* exp(-x);

n = [5; 10; 20; 40];

%Calcolo la formula dei trapezi per ogni n
In = zeros(4, 1);
for i=1:4
    In(i) = FormulaDeiTrapezi(0, 1, f, n(i));
end

data = table(n, In);
disp(data);