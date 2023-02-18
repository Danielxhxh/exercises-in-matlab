function p0 = Estrapolazione(a, b, f, n)

%Calcolo le formule dei trapezi 
In = zeros(length(n), 1);
h = zeros(length(n), 1);

for i = 1:length(In)
    In(i) = FormulaDeiTrapezi(a, b, f, n(i));
    h(i) = (b - a) / n(i);
end

%Calcolo p(0) usando RuffiniHorner
p0 = RuffiniHorner(h.^2 , In, 0); 
end